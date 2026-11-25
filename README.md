# VBZ — Get in the Vibe ✦

Protótipo da **VBZ**, uma marca com três experiências: **Social**, **World** e **Fashion**, feito segundo o Manual de Marca VBZ (PDF).

- **Social** (parte principal): Home ("Good morning", Your Circle, Happening Now), Feed (For You / Friends / Following / Circles), Friends e Profile, no visual claro do manual (fundo off-white, fonte Lato, cores Ink, Vibe Pink, Vibe Purple e Sunset).
- **World**: cidade em pixel art no estilo de hotel virtual isométrico, com salas (Praça VBZ, Lounge, Sunset), quarto próprio decorável com mobília, chat, joystick e os botões da página 15 do manual.
- **Shop**: linha Core (Boxy Tee, Baby Tee, Hoodie, Zip Jacket) e a coleção Final Mix / 26, com as fotos do manual, para vestir o avatar.
- **Pilas**: moeda do app. No protótipo a compra é só de teste e não cobra nada.

## Arquivos

| Caminho | O que é |
|---|---|
| `index.html` | O app inteiro (HTML, CSS e JavaScript num arquivo só) |
| `img/` | Fotos e ilustrações recortadas do Manual de Marca |
| `HISTORICO.md` | Resumo e histórico da conversa em que o protótipo foi construído |

## Como abrir

Abra `index.html` no navegador, ou sirva a pasta:

```bash
python3 -m http.server 8000
```

e acesse http://localhost:8000.

## Versão online x versão local

O protótipo nasceu como artifact no claude.ai: https://claude.ai/artifact/5sSwmvjnKy6Pte3K5jze2x

Lá ele usa os recursos do claude.ai (banco de dados compartilhado, presença na sala e identificação de quem está vendo), então perfis, posts, curtidas e outras pessoas no World aparecem para todo mundo. Aberto fora do claude.ai, funciona só no modo local: dá para criar o avatar e navegar por tudo, mas nada é salvo nem compartilhado. Para virar um app de verdade, essa parte precisa de um backend próprio (por exemplo Supabase ou Firebase).
