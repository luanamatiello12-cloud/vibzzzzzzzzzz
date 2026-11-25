-- =====================================================================
-- VBZ — banco de dados no Supabase (login, rede social e Mundo)
-- Como usar: Supabase → seu projeto → SQL Editor → New query → cole TUDO → Run.
-- Pode rodar de novo sem problema (o script só cria o que ainda não existe).
--
-- Regras de privacidade (RLS) ficam no servidor:
--   • perfis e posts públicos: qualquer pessoa logada vê
--   • posts de círculo: só membros do círculo veem
--   • mensagens: só quem mandou e quem recebeu veem
--   • cada pessoa só edita o próprio perfil, os próprios posts e as próprias curtidas
-- =====================================================================

create extension if not exists pgcrypto;

-- ---------------------------------------------------------------------
-- PERFIS (1 por conta; a foto de perfil é o personagem, guardado em "look")
-- ---------------------------------------------------------------------
create table if not exists public.profiles (
  id          uuid primary key references auth.users(id) on delete cascade,
  nick        text not null check (char_length(nick) between 2 and 16),
  look        jsonb not null default '{}'::jsonb,
  bio         text not null default '' check (char_length(bio) <= 160),
  tags        text not null default '' check (char_length(tags) <= 60),
  cover       text not null default 'palmeiras' check (char_length(cover) <= 20),
  coins       integer not null default 300 check (coins >= 0),
  owned       jsonb not null default '[]'::jsonb,
  inv         jsonb not null default '{}'::jsonb,
  created_at  timestamptz not null default now(),
  updated_at  timestamptz not null default now()
);
create unique index if not exists profiles_nick_unique on public.profiles (lower(nick));

-- ---------------------------------------------------------------------
-- AMIZADES: cada linha é um pedido "de → para". Amizade = pedido nos dois sentidos.
-- ---------------------------------------------------------------------
create table if not exists public.friend_requests (
  from_id     uuid not null references public.profiles(id) on delete cascade,
  to_id       uuid not null references public.profiles(id) on delete cascade,
  created_at  timestamptz not null default now(),
  primary key (from_id, to_id),
  check (from_id <> to_id)
);

-- ---------------------------------------------------------------------
-- CÍRCULOS (grupos fechados)
-- ---------------------------------------------------------------------
create table if not exists public.circles (
  id          uuid primary key default gen_random_uuid(),
  name        text not null check (char_length(name) between 1 and 30),
  color       text not null default '#7A00FF' check (color ~ '^#[0-9A-Fa-f]{6}$'),
  owner_id    uuid not null references public.profiles(id) on delete cascade,
  created_at  timestamptz not null default now()
);
create table if not exists public.circle_members (
  circle_id   uuid not null references public.circles(id) on delete cascade,
  user_id     uuid not null references public.profiles(id) on delete cascade,
  added_at    timestamptz not null default now(),
  primary key (circle_id, user_id)
);

-- é membro? (security definer evita recursão nas regras)
create or replace function public.is_circle_member(cid uuid)
returns boolean language sql stable security definer set search_path = public as $$
  select exists (select 1 from public.circle_members where circle_id = cid and user_id = auth.uid());
$$;
create or replace function public.is_circle_owner(cid uuid)
returns boolean language sql stable security definer set search_path = public as $$
  select exists (select 1 from public.circles where id = cid and owner_id = auth.uid());
$$;
create or replace function public.are_friends(a uuid, b uuid)
returns boolean language sql stable security definer set search_path = public as $$
  select exists (select 1 from public.friend_requests where from_id = a and to_id = b)
     and exists (select 1 from public.friend_requests where from_id = b and to_id = a);
$$;

-- ---------------------------------------------------------------------
-- POSTS, CURTIDAS, COMENTÁRIOS, SALVOS
-- ---------------------------------------------------------------------
create table if not exists public.posts (
  id          uuid primary key default gen_random_uuid(),
  author_id   uuid not null references public.profiles(id) on delete cascade,
  text        text not null default '' check (char_length(text) <= 280),
  music       text check (music is null or char_length(music) <= 300),
  show_look   boolean not null default false,
  look        jsonb,
  place       text not null default '' check (char_length(place) <= 40),
  circle_id   uuid references public.circles(id) on delete cascade,
  created_at  timestamptz not null default now(),
  check (char_length(text) > 0 or music is not null)
);
create index if not exists posts_created_idx on public.posts (created_at desc);

create table if not exists public.likes (
  post_id     uuid not null references public.posts(id) on delete cascade,
  user_id     uuid not null references public.profiles(id) on delete cascade,
  created_at  timestamptz not null default now(),
  primary key (post_id, user_id)
);
create table if not exists public.comments (
  id          uuid primary key default gen_random_uuid(),
  post_id     uuid not null references public.posts(id) on delete cascade,
  author_id   uuid not null references public.profiles(id) on delete cascade,
  text        text not null check (char_length(text) between 1 and 200),
  created_at  timestamptz not null default now()
);
create table if not exists public.saves (
  post_id     uuid not null references public.posts(id) on delete cascade,
  user_id     uuid not null references public.profiles(id) on delete cascade,
  primary key (post_id, user_id)
);

-- ---------------------------------------------------------------------
-- MENSAGENS DIRETAS (só entre amigos)
-- ---------------------------------------------------------------------
create table if not exists public.messages (
  id          uuid primary key default gen_random_uuid(),
  sender_id   uuid not null references public.profiles(id) on delete cascade,
  recipient_id uuid not null references public.profiles(id) on delete cascade,
  text        text not null check (char_length(text) between 1 and 500),
  created_at  timestamptz not null default now(),
  read_at     timestamptz,
  check (sender_id <> recipient_id)
);
create index if not exists messages_pair_idx on public.messages (least(sender_id, recipient_id), greatest(sender_id, recipient_id), created_at);

-- ---------------------------------------------------------------------
-- MUNDO: quartos decorados de cada pessoa
-- ---------------------------------------------------------------------
create table if not exists public.rooms (
  id          uuid primary key default gen_random_uuid(),
  owner_id    uuid not null references public.profiles(id) on delete cascade,
  name        text not null check (char_length(name) between 1 and 28),
  size        integer not null default 8 check (size in (8, 12, 16)),
  floor       text not null default 'madeira',
  wall        text not null default 'roxo',
  furni       jsonb not null default '[]'::jsonb,
  updated_at  timestamptz not null default now()
);

-- =====================================================================
-- REGRAS (Row Level Security)
-- =====================================================================
alter table public.profiles        enable row level security;
alter table public.friend_requests enable row level security;
alter table public.circles         enable row level security;
alter table public.circle_members  enable row level security;
alter table public.posts           enable row level security;
alter table public.likes           enable row level security;
alter table public.comments        enable row level security;
alter table public.saves           enable row level security;
alter table public.messages        enable row level security;
alter table public.rooms           enable row level security;

-- apaga as regras antigas para poder rodar o script de novo
do $$ declare r record; begin
  for r in select policyname, tablename from pg_policies where schemaname = 'public' and policyname like 'vbz_%' loop
    execute format('drop policy %I on public.%I', r.policyname, r.tablename);
  end loop;
end $$;

-- perfis
create policy vbz_profiles_read   on public.profiles for select to authenticated using (true);
create policy vbz_profiles_insert on public.profiles for insert to authenticated with check (id = auth.uid());
create policy vbz_profiles_update on public.profiles for update to authenticated using (id = auth.uid()) with check (id = auth.uid());

-- amizades: todo mundo logado vê (para mostrar "amigos"), cada um cria/apaga só os próprios pedidos
-- (apagar um pedido recebido = recusar)
create policy vbz_fr_read   on public.friend_requests for select to authenticated using (true);
create policy vbz_fr_insert on public.friend_requests for insert to authenticated with check (from_id = auth.uid());
create policy vbz_fr_delete on public.friend_requests for delete to authenticated using (from_id = auth.uid() or to_id = auth.uid());

-- círculos: só membros veem; quem cria vira dono; dono renomeia e apaga
create policy vbz_circles_read   on public.circles for select to authenticated using (public.is_circle_member(id) or owner_id = auth.uid());
create policy vbz_circles_insert on public.circles for insert to authenticated with check (owner_id = auth.uid());
create policy vbz_circles_update on public.circles for update to authenticated using (owner_id = auth.uid());
create policy vbz_circles_delete on public.circles for delete to authenticated using (owner_id = auth.uid());
-- membros: membros veem a lista; o dono adiciona amigos dele; cada um sai sozinho; o dono remove
create policy vbz_cm_read   on public.circle_members for select to authenticated using (public.is_circle_member(circle_id) or public.is_circle_owner(circle_id));
create policy vbz_cm_insert on public.circle_members for insert to authenticated
  with check (public.is_circle_owner(circle_id) and (user_id = auth.uid() or public.are_friends(auth.uid(), user_id)));
create policy vbz_cm_delete on public.circle_members for delete to authenticated using (user_id = auth.uid() or public.is_circle_owner(circle_id));

-- posts: públicos para todos os logados; posts de círculo só para membros
create policy vbz_posts_read   on public.posts for select to authenticated using (circle_id is null or public.is_circle_member(circle_id));
create policy vbz_posts_insert on public.posts for insert to authenticated
  with check (author_id = auth.uid() and (circle_id is null or public.is_circle_member(circle_id)));
create policy vbz_posts_delete on public.posts for delete to authenticated using (author_id = auth.uid());

-- curtidas, comentários e salvos seguem a visibilidade do post
create policy vbz_likes_read   on public.likes for select to authenticated using (exists (select 1 from public.posts p where p.id = post_id));
create policy vbz_likes_insert on public.likes for insert to authenticated with check (user_id = auth.uid() and exists (select 1 from public.posts p where p.id = post_id));
create policy vbz_likes_delete on public.likes for delete to authenticated using (user_id = auth.uid());

create policy vbz_comments_read   on public.comments for select to authenticated using (exists (select 1 from public.posts p where p.id = post_id));
create policy vbz_comments_insert on public.comments for insert to authenticated with check (author_id = auth.uid() and exists (select 1 from public.posts p where p.id = post_id));
create policy vbz_comments_delete on public.comments for delete to authenticated using (author_id = auth.uid());

create policy vbz_saves_read   on public.saves for select to authenticated using (user_id = auth.uid());
create policy vbz_saves_insert on public.saves for insert to authenticated with check (user_id = auth.uid());
create policy vbz_saves_delete on public.saves for delete to authenticated using (user_id = auth.uid());

-- mensagens: só as duas pessoas da conversa; só dá para mandar para amigos
create policy vbz_msg_read   on public.messages for select to authenticated using (sender_id = auth.uid() or recipient_id = auth.uid());
create policy vbz_msg_insert on public.messages for insert to authenticated with check (sender_id = auth.uid() and public.are_friends(sender_id, recipient_id));
create policy vbz_msg_update on public.messages for update to authenticated using (recipient_id = auth.uid()) with check (recipient_id = auth.uid());

-- quartos: todo mundo logado visita; só o dono cria, decora e apaga
create policy vbz_rooms_read   on public.rooms for select to authenticated using (true);
create policy vbz_rooms_insert on public.rooms for insert to authenticated with check (owner_id = auth.uid());
create policy vbz_rooms_update on public.rooms for update to authenticated using (owner_id = auth.uid()) with check (owner_id = auth.uid());
create policy vbz_rooms_delete on public.rooms for delete to authenticated using (owner_id = auth.uid());

-- =====================================================================
-- TEMPO REAL (posts, mensagens etc. aparecem na hora)
-- =====================================================================
do $$ declare t text; begin
  foreach t in array array['profiles','friend_requests','circles','circle_members','posts','likes','comments','messages','rooms'] loop
    if not exists (select 1 from pg_publication_tables where pubname = 'supabase_realtime' and schemaname = 'public' and tablename = t) then
      execute format('alter publication supabase_realtime add table public.%I', t);
    end if;
  end loop;
end $$;
