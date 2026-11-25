# VBZ — Get in the Vibe ✦

Protótipo da **VBZ**, uma marca com três experiências: **Social**, **World** e **Fashion**, feito segundo o Manual de Marca VBZ (PDF).

- **Social** (parte principal): Home ("Good morning", Your Circle, Happening Now), Feed (Para você / Amigos / Círculos), Amigos, Perfil e Mensagens, em tema neon escuro com as cores do manual (fundo noturno, vidro escuro, brilho Vibe Pink e Vibe Purple). Amizade por pedido e aceite; Círculos são grupos fechados onde só membros veem os posts.

## Identidade visual (Brand Identity Manual v1.0)

- **Fontes:** Clash Grotesk (títulos, Semibold/Bold, via Fontshare) e Inter (texto, via Google Fonts).
- **Cores:** Black `#0B0B0D`, White `#FFFFFF`, Gray 100 `#F5F5F7`, Gray 300 `#D9D9E3`, Vibe Pink `#FF2EC4`, Vibe Purple `#7A00FF`. Ficam como variáveis em `:root` no `index.html`.
- **Logo:** "VBZ" em Bold inclinado com a estrela de quatro pontas no alto, e "GET IN THE VIBE" espaçado embaixo.
- **Espaçamento:** grade de 8 px (`--s1` a `--s6` = 8, 16, 24, 32, 48, 64).
- **Ícones:** traço único de 1,75 com pontas arredondadas.
- **Seções:** VBZ Social, VBZ World (acento roxo) e VBZ Fashion (acento rosa).
- **World**: cidade em pixel art no estilo de hotel virtual isométrico, com salas (Praça VBZ, Lounge, Sunset), quarto próprio decorável com mobília, chat, joystick e os botões da página 15 do manual.
- **Shop**: linha Core (Boxy Tee, Baby Tee, Hoodie, Zip Jacket) e a coleção Final Mix / 26, com as fotos do manual, para vestir o avatar.
- **Pilas**: moeda do app. No protótipo a compra é só de teste e não cobra nada.

## Arquivos

| Caminho | O que é |
|---|---|
| `index.html` | O app inteiro (HTML, CSS e JavaScript num arquivo só) |
| `img/` | Fotos e ilustrações recortadas do Manual de Marca |
| `img/drop02/` | Artes da Fashion Drop 02 e da Accessory Drop 01 (tops, bottoms, calçados, bolsas e acessórios), tiradas do projeto Unity "VBZ Recovery Gold 13" |
| `img/world/` | Artes de cenário do mesmo projeto: céu de pôr do sol, letreiros neon, vitrines, LED, plantas e eventos |
| `img/floor/` | As 24 texturas de piso do Map Studio do projeto Unity, reduzidas para 128 px |
| `HISTORICO.md` | Resumo e histórico da conversa em que o protótipo foi construído |

## Como abrir

Abra `index.html` no navegador, ou sirva a pasta:

```bash
python3 -m http.server 8000
```

e acesse http://localhost:8000.

## Login e banco de dados (Supabase) — para publicar no Netlify

Fora do claude.ai a VBZ precisa de um servidor para ter login e para as pessoas se verem. O banco está descrito em [`supabase/schema.sql`](supabase/schema.sql).

1. Crie uma conta grátis em [supabase.com](https://supabase.com) e clique em **New project** (escolha a região **South America (São Paulo)**). Guarde a senha do banco só com você.
2. No projeto, abra **SQL Editor → New query**, cole todo o conteúdo de `supabase/schema.sql` e clique em **Run**. Isso cria as tabelas (perfis, amizades, círculos, posts, curtidas, comentários, salvos, mensagens e quartos) e as regras de privacidade.
3. Em **Authentication → Sign In / Providers**, deixe **Email** ligado. Para testar rápido, desligue **Confirm email**; depois de publicar, ligue de novo.
4. Em **Project Settings → API**, copie a **Project URL** e a chave **anon public**. Essas duas podem ficar no site. **Nunca** coloque no site a chave `service_role` nem a senha do banco.
5. Depois de publicar no Netlify, volte em **Authentication → URL Configuration** e coloque o endereço do site em **Site URL**.

## Versão online x versão local

O protótipo nasceu como artifact no claude.ai: https://claude.ai/artifact/5sSwmvjnKy6Pte3K5jze2x

Lá ele usa os recursos do claude.ai (banco de dados compartilhado, presença na sala e identificação de quem está vendo), então perfis, posts, curtidas e outras pessoas no World aparecem para todo mundo. Aberto fora do claude.ai, funciona só no modo local: dá para criar o avatar e navegar por tudo, mas nada é salvo nem compartilhado. Para virar um app de verdade, essa parte precisa de um backend próprio (por exemplo Supabase ou Firebase).
