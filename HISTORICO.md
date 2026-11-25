# Histórico do projeto VBZ

Registro da sessão "Ambiente Habbo + Project Zomboid" (23 e 24/11/2026), reconstruído a partir das mensagens digitadas e das respostas finais do assistente em cada turno. Horários em UTC.

## Resumo

- **O que é a VBZ:** começou como um ambiente que juntava a lógica do Habbo com a estética do Project Zomboid ("Hotel Ruína") e virou a **VBZ**, uma rede social com mundo em pixel art, compartilhada ao vivo entre quem abre o link. Link principal: https://claude.ai/artifact/5sSwmvjnKy6Pte3K5jze2x
- **Manual de marca (PDF):** a VBZ é **uma marca com três experiências**: **Social** (a principal: Home, Feed, Friends, Profile), **World** (opcional, em pixel art, estilo Habbo) e **Fashion** (VBZ Shop). Visual claro (off-white), fonte Lato, logo VBZ itálico com estrela, paleta Ink, Vibe Pink, Vibe Purple e Sunset. Tom "Get in the vibe ✦", "Join the room", "Wear your vibe". O manual pede para **evitar a ostentação**.
- **Como chegou lá:** foram várias tentativas de visual. Primeiro o lobby cinza no estilo Zomboid, depois a "vibe VBZ" roxo/rosa/laranja, depois o uso da imagem de referência como cenário, com bonecos recortados dela. A usuária achou tudo ruim ("tudo"), e a VBZ foi refeita do zero como hotel estilo Habbo. Por fim foi refeita de novo segundo o PDF, usando as fotos e ilustrações do próprio manual.
- **Decisões:** abandonar os recortes da imagem e a cidade grande (lotes, carros, ônibus); tirar itens de ostentação (coroa, trono, carro esportivo); usar a linha de roupas do manual (Core e Edição Final Mix / 26); uma moeda só (pilas); quem já tinha conta mantém apelido e pilas, mas volta com roupa básica.
- **O que foi construído (versão atual):** Home com "Good morning", Your Circle e Happening Now; Feed com abas For You, Friends, Following e Circles, curtir, salvar e "+ New post"; Profile com capa, bio, números e grade de fotos; World com salas (Praça VBZ, Lounge, Sunset), quarto próprio decorável, joystick e 4 botões rosa, chat ao vivo e música; Shop com fotos reais do PDF e "provar" no avatar; caixa do dono.
- **Pendências e pontos em aberto:**
  - As **contas e números de exemplo** do mockup (adri.vbz, luna.vbz, bia.vbz, nando.vbz, rafa.vbz; "234 posts", "1,2K", curtidas) **aparecem para todo mundo** junto com os usuários reais. O assistente ofereceu tirá-los.
  - O cenário do World ainda é pixel art desenhado por código, não a ilustração da página 15.
  - O avatar é o bonequinho em pixel. Envio de foto de perfil e de fotos nos posts foi oferecido, mas não feito.
  - O **pagamento é de teste**: as pilas são creditadas de graça. Para cobrar de verdade faltam um servidor próprio e uma empresa de pagamento. O saldo fica do lado do jogador e pode ser burlado.
  - Só entra quem for convidada pelo menu Compartilhar, com acesso de participante.
  - A usuária não respondeu se gostou da última versão.

## Registro cronológico

Observação: mensagens só com imagem ou anexo aparecem como [imagem] ou [anexo]. Os textos de sistema (carregamento de skill, troca de modelo, estado do avatar na página) foram omitidos. Quando várias mensagens seguidas tiveram uma só resposta, elas aparecem juntas.

### 1. 23/11/2026 18:56
**Usuária:** "crie um ambiente que combine a logica do habbo com a estetica do project zomboid"

**Assistente (resumo):** Criou o **Hotel Ruína**, jogo original: https://claude.ai/artifact/Vk2aPA78FomvW1Kc228TFs
- **Lado Habbo:** andar clicando, sentar e deitar, balões de fala, comandos `:sentar`, `:levantar`, `:acenar`, `:gritar`. Também Catálogo (sucata por móveis), Mochila, modo Construir e Navegador com 3 cômodos (Saguão, Quarto 214, Telhado). Cinco sobreviventes NPC.
- **Lado Zomboid:** cores lavadas, granulado, ciclo dia e noite, 6 indicadores (fome, sede, cansaço, tédio, pânico, saúde). À noite, mortos nas janelas e tábuas para pregar; gerador que atrai zumbis; telhado com horta e chuva; tela de fim.
- Salvo só no navegador, sem multijogador. Arquivo `/home/user/hotel-ruina/index.html`.

### 2. 23/11/2026 19:18
**Usuária:** [duas imagens, sem texto]

**Assistente (resumo):** Montou o **lobby multijogador**, um protótipo separado: https://claude.ai/artifact/5sSwmvjnKy6Pte3K5jze2x
- Lobby compartilhado ao vivo com contador de online. Entrada de cueca: apelido, tom de pele e cabelo.
- Loja de roupas da Cida: 17 peças, de chinelo (60 pilas) a terno (8.000), com corrente e relógio de ouro.
- Rua com 18 lotes à venda com o Valdir: cerca de 85 mil pilas de frente para o lobby e 5 mil no fundo. A obra é paga à parte: barraco, depois casa, depois sobrado com terraço dourado. O boneco do dono fica exposto no lote.
- Pilas: de 500 por R$ 19,90 até 100 mil por R$ 1.999,90. Caixa do servidor visível só para a dona, mais um painel público de últimas compras.
- Avisos: pagamento não é real; o saldo fica do lado do jogador; só entra quem for convidada; visual Zomboid sem zumbis.
- Próximos passos sugeridos: transferências, concessionária, ônibus, interior das casas. Arquivo `/home/user/hotel-ruina/lobby.html`.

### 3. 23/11/2026 19:30 e 19:33
**Usuária:** "agora faz a concessionária de carros e os ônibus"
**Usuária:** [imagem] "faz nessa vibe"

**Assistente (resumo):** Fez a concessionária, os ônibus e o visual "vibe VBZ": https://claude.ai/artifact/5sSwmvjnKy6Pte3K5jze2x
- **Visual:** roxo, rosa e laranja de pôr do sol, neon, letreiro "VBZ — entre na vibe", caixas de som e palmeiras.
- **Tela no estilo da imagem:** perfil no topo, menu à esquerda (Início, Loja, Avatar, Amigos, Veículos, Imóveis, Caixa, Ajuda), moedas à direita e chat embaixo. Quatro peças streetwear novas.
- **Concessionária do Tonhão:** 6 veículos, do Fusca (2.500) ao Ônibus de luxo (120.000). Dá para dirigir, levar amigos e expor o carro no terreno.
- **Linha 01:** ônibus público com 4 pontos, passagem de 10 pilas.
- Diferenças em relação à imagem: uma moeda só, sem botão de música, pagamento de teste.

### 4. 23/11/2026 19:43 e 19:44
**Usuária:** "amplie o mapa"
**Usuária:** "ta vendo que conforme te enviei aquela imagem, ela ta em um estilo 3d? se atente a esses detalhes, aos detalhes dos bonecos"

**Assistente (resumo):** Mapa ampliado de 36×34 para 60×56, no mesmo link.
- **Regiões:** Centro, Jardim Neon (21 lotes de 6 a 9 mil), Rua das Palmeiras e Orla (praia, quiosque de coco, 11 lotes de 45 a 58 mil).
- **Ônibus e menu:** Linhas 01 e 02, item "Mapa" no menu e Imobiliária separada por região.
- **Bonecos:** refeitos em pixel art com contorno, luz e sombra, rosto detalhado e roupas com detalhes.
- Ressalva: a imagem parece pintada à mão e o código só chega perto do estilo.

### 5. 23/11/2026 19:50 a 19:54
**Usuária:** "faz o botão de música tocando um som"
**Usuária:** [imagem] "a estetica ta feia, siga a estetica da imagem"
**Usuária:** "os boneco tb tao feio"

**Assistente (resumo):** No mesmo link.
- **Música:** o botão "Música" liga a "VBZ FM", uma batida eletrônica gerada no navegador. Cada pessoa liga a sua, sem sincronia.
- **Visual:** tela inicial com logo VBZ, "ENTRE NA VIBE" e 4 botões. O lobby ganhou muro de tijolo com trepadeiras, vitrine "VBZ STORE", balada com DJ e chão de pedra.
- **Bonecos:** redesenhados com cabeça grande, olhos com brilho e bochecha corada.
- Ainda faltavam poses variadas e o segundo andar da imagem.

### 6. 23/11/2026 19:56
**Usuária:** "folh"

**Assistente:** "Acho que sua mensagem saiu cortada: chegou só "folh". O que você queria dizer?
Se for algo no jogo, me diz o que é, por exemplo:
- **folhagem:** mais plantas, palmeiras ou trepadeiras pelo mapa;
- **folha:** algum item, como uma folha de papel ou um cartaz;
- outra coisa que você viu e quer mudar."

### 7. 23/11/2026 19:57
**Usuária:** "filho, segue a estetica da foto"

**Assistente:** "Fiz mais uma rodada para chegar perto da foto. Está no mesmo link:
https://claude.ai/artifact/5sSwmvjnKy6Pte3K5jze2x

**O que mudou**
- **Câmera mais perto:** os bonecos aparecem bem maiores na tela, como na foto.
- **Luz de pôr do sol de verdade:** o canto de cima à direita recebe luz laranja quente e o de baixo à esquerda cai numa sombra roxa. As cores ficaram mais vivas, e o piso de pedra é cinza quente em vez de rosa chapado.
- **Grade com neon:** o lobby agora é cercado por uma grade escura com fita de neon roxo embaixo, igual à da foto, com aberturas de entrada para a avenida e para a rua de trás.
- **Mais verde:** samambaias grandes nos cantos e ao longo da grade, e palmeiras nas pontas do lobby.

Testei no navegador e não deu erro.

Algumas coisas da foto ainda não tenho: escadaria com degraus de neon, o terraço no andar de cima e bonecos em poses variadas (sentado na escada, encostado na grade, segurando copo).

Se você me disser qual parte ainda está te incomodando mais (bonecos, chão, cores, prédios), eu foco nela."

### 8. 23/11/2026 19:58
**Usuária:** "tudo, nao tem nada dentro da estetica da foto"

**Assistente (resumo):** Reconheceu que desenhar por código não chega à ilustração pintada. O "motor" está pronto (andar, chat, loja, pilas, terrenos, carros, ônibus, mapa, caixa, música); falta a **arte**. Propôs três caminhos:
1. A usuária manda arte feita por artista ou por IA de imagem, separada em partes.
2. Usar um pacote de pixel art grátis.
3. Usar a própria foto como cenário do lobby, o que exige o arquivo sem os botões e o logo.

### 9. 23/11/2026 20:00
**Usuária:** [imagem] "isso aqui ja tem o suficiente pra vc"

**Assistente (resumo):** Usou a imagem como cenário do lobby, no mesmo link.
- Apagou os botões, o logo e o menu pintados e pôs a interface real nas mesmas posições.
- Áreas clicáveis: escadaria (sentar), vitrine (loja), balada (música), grade (mirante) e canto da tela (cidade).
- Ressalvas: as pessoas pintadas ficam paradas no fundo; os bonecos dos jogadores continuam desenhados por código; a cidade ficou com o visual antigo.

### 10. 23/11/2026 20:08
**Usuária:** "mds, que coisa feia vc fez kkkkkkkkkkkkkkkk"

**Assistente:** "Kkkk justo. Conferi aqui e a imagem do cenário está publicada direitinho, então você deve estar vendo a versão nova. Só que daqui não consigo ver a tela do seu jeito.

Os pontos que eu mesmo acho que ficaram estranhos:

1. **Meio da imagem:** onde ficava o logo, eu inventei uma cidade com prédios e luzinhas. Não ficou no mesmo traço do resto e dá para ver que foi remendado.
2. **Bonecos dos jogadores:** são desenhados pelo código e destoam das pessoas pintadas na imagem, que têm muito mais detalhe.
3. **Pessoas pintadas paradas:** fazem parte do fundo, então o seu boneco passa por cima delas como se fossem um adesivo.

Algum desses é o que mais te incomodou, ou é outra coisa? Se puder, me manda um print do que você está vendo.

O que resolveria de vez o 1 e o 3 é uma versão da mesma imagem **só com o cenário**: sem logo, sem botões e sem as pessoas. Se foi gerada numa ferramenta de imagem, dá para pedir de novo nesse formato. Para o 2, o ideal é uma imagem com um boneco de corpo inteiro, de frente e de costas, no mesmo estilo. Com isso eu troco a arte e o jogo fica do jeito da sua foto."

### 11. 23/11/2026 20:08
**Usuária:** "os bonecos ta feio"
**Usuária:** "a ideia é que vc desenvolva apartir da image"

**Assistente (resumo):** Recortou as pessoas pintadas da imagem e cada uma virou um personagem jogável, no mesmo link.
- Cinco personagens: três grátis no cadastro e dois na VBZ Store (loira de jeans por 2.500, moletom com boné por 4.000).
- O do moletom senta de verdade na escadaria. Ao andar, o boneco balança e vira, sem animação real.
- As roupas soltas saíram da loja, que passou a vender o visual inteiro. A entrada de cueca saiu.

### 12. 23/11/2026 20:14
**Usuária:** "agora faz a cidade nesse estilo tb"

**Assistente (resumo):** Montou a cidade com pedaços da imagem, no mesmo link.
- Fachadas da VBZ Store e da balada no lobby, pedra da praça nas calçadas, pedra do muro nas paredes e casas, plantas recortadas e o céu da imagem ao fundo.
- Continuam no visual antigo: o asfalto, as casas, a concessionária, a grama, os lotes e a praia.

### 13. 23/11/2026 20:19
**Usuária:** "viu, ele ta todo bugado, reveja"

**Assistente:** "Revisei e corrigi o que estava bugado no lobby:

https://claude.ai/artifact/5sSwmvjnKy6Pte3K5jze2x

1. **Sentar na escada:** os lugares para sentar caíam em cima das pessoas pintadas. Agora são três degraus livres embaixo.
   - O "Moletom + boné" senta de verdade, com o desenho do rapaz sentado da imagem, e fica igual aos que já estão ali.
   - Os outros visuais não têm desenho sentado. Antes eles ficavam em pé "afundados" na escada; agora vão até o degrau, ficam em pé e aparece um aviso.
2. **Cabeça cortada:** refiz o recorte da jaqueta marrom e agora ela vem inteira, com cabelo e óculos.
3. **Bonecos repetidos:** a Cida e o Valdir usavam os mesmos recortes das pessoas do fundo e apareciam pessoas iguais lado a lado. Tirei os dois do lobby. A loja continua abrindo pela vitrine e a imobiliária pelo menu.

Testei no navegador sentado na escada e andando, sem erros. Seu boneco atual é a jaqueta: recarrega a página para pegar o recorte novo.

Ainda pode parecer estranho que os visuais "Cropped e shorts", "Camiseta laranja" e "Jaqueta" são as mesmas pessoas pintadas no fundo (na escada e na porta da balada). Se incomodar, me fala qual delas está mais esquisita."

### 14. 23/11/2026 20:21 e 20:22
**Usuária:** "ainda esta bugado, reveja tudo"
**Usuária:** [imagem: print]

**Assistente:** "Revisei o lobby de novo, andando com o boneco por vários pontos da praça, e corrigi o que encontrei:

https://claude.ai/artifact/5sSwmvjnKy6Pte3K5jze2x

1. **Clones:** os dois rapazes pintados na porta da balada eram iguais aos visuais "jaqueta" e "camiseta laranja". Escureci os dois e eles viraram vultos, como o público dentro da balada, então seu boneco não tem mais um gêmeo do lado.
2. **Menina de cropped da escada:** apagar ela do fundo estragaria a escada, então tirei esse visual da loja e do cadastro. Quem estava com ele passou a usar a "loira de jeans".
3. **Sumindo atrás do chat:** a área onde dá para andar agora termina acima da barra de chat.
4. **Porta da balada:** não dá mais para entrar na área da porta e ficar "flutuando" na frente da vitrine.
5. **Loja:** os visuais grátis mostravam "0 pilas" com botão "Comprar". Agora aparecem como "Grátis" com botão "Usar".

Testei no navegador sem erros, andando até a balada, o mirante, a escada e os cantos da praça, e também a loja e a ida para a cidade.

Agora restam quatro visuais: camiseta laranja e jaqueta (grátis), loira de jeans e moletom com boné (pagos). Se ainda vir algo estranho, me manda um print ou fala onde estava o boneco, que eu vou direto no ponto."

### 15. 23/11/2026 20:24
**Usuária:** "onde esta o mapa da cidade"

**Assistente:** "Fica no menu da esquerda, no botão **Mapa** (o ícone de mapa dobrado, logo abaixo de "Cidade"). No celular, o menu é a barra de ícones embaixo, acima do chat, e o Mapa está mais para o fim dela: arrasta para o lado se não aparecer.

Ao clicar em Mapa estando no lobby, você vai direto para a cidade e o mapa abre por cima:
- **O que aparece:** a cidade inteira vista de cima, com o lobby, a avenida, o Jardim Neon, a concessionária e a Orla. Você é o ponto branco, os amigos são os pontos rosa e os dois ônibus aparecem em amarelo e azul.
- **Clicar num lugar do mapa:** a câmera vai até ele.
- **Lotes:** os que têm dono ficam marcados em rosa.

Para só passear pela cidade sem abrir o mapa, use o botão **Cidade** do mesmo menu. Lá dentro ele vira **Lobby**, para voltar."

### 16. 23/11/2026 20:24
**Usuária:** "faz o mapa no estilo da imagem tb"

**Assistente:** "Refiz o mapa da cidade no estilo da imagem. Ele abre pelo botão **Mapa** no menu:

https://claude.ai/artifact/5sSwmvjnKy6Pte3K5jze2x

**Como ficou**
- **Lobby:** chão com a pedra da praça, contorno em neon rosa, letreiro "VBZ" e miniaturas da VBZ Store e da balada recortadas da imagem.
- **Ruas:** asfalto escuro com faixa laranja tracejada e postes como pontos de luz rosa e laranja.
- **Bairros:** letreiros em neon para Jardim Neon, Orla, Tonhão, Av. Central e Rua das Palmeiras.
- **Verde e praia:** grama em verde-oliva com folhinhas e palmeiras vistas de cima. Na praia, guarda-sóis, quiosque, espuma e mar roxo com reflexo rosa do pôr do sol.
- **Lotes:** à venda mostram o preço em mil pilas. Com dono, ficam verdes com contorno rosa, mostram a casa conforme a obra e a cabeça do dono num círculo dourado.
- **Pessoas:** você aparece com a cabeça do seu personagem num círculo branco brilhante e os amigos em círculos rosa. Os dois ônibus andam pela avenida em tempo real.
- **Acabamento:** luz de pôr do sol e bordas escurecidas, como na imagem.

O mapa se atualiza sozinho enquanto está aberto, e clicar num ponto ainda leva a câmera até lá. Testei no navegador sem erros."

### 17. 23/11/2026 20:28
**Usuária:** "abre de novo"

**Assistente:** "Abri de novo para você. O link é https://claude.ai/artifact/5sSwmvjnKy6Pte3K5jze2x

Se ainda aparecer a versão antiga, recarrega a página. O mapa novo abre pelo botão **Mapa** no menu da esquerda."

### 18. 23/11/2026 20:28
**Usuária:** [imagem: print de boneco cortado]

**Assistente:** "Corrigi o boneco cortado do seu print: https://claude.ai/artifact/5sSwmvjnKy6Pte3K5jze2x

Na sua imagem, as pernas do rapaz de moletom e boné e as da loira ficam escondidas atrás da barra de chat pintada. Por isso o recorte terminava no meio da canela, sem pé, e o boneco parecia flutuar acima da sombra. Também tinha um pedacinho roxo do fundo grudado entre as pernas dele.

- **Moletom + boné:** desenhei o resto das canelas, meia branca e tênis escuro com sola branca, no mesmo estilo de pixel, e tirei o pedaço roxo.
- **Loira:** completei a barra da calça e coloquei tênis brancos.

Testei no lobby e agora os pés ficam em cima da sombra. Recarrega a página para ver."

### 19. 23/11/2026 20:31
**Usuária:** "ta tudo pessimo aaaaaaaaaaaa"

**Assistente (resumo):** Explicou que tirar um jogo inteiro de uma ilustração única gera "colagem quebrada" e que mais código não resolve. A solução é arte feita para jogo, com cada coisa separada. Deu exemplos de instruções para uma IA de imagem: cenário do lobby sem pessoas, folha de sprites do personagem em 4 direções e cidade em imagens separadas. Ofereceu escrever a lista completa, contratar um ilustrador ou focar em outra parte.

### 20. 23/11/2026 20:31
**Usuária:** "nao, vc n entendeu"

**Assistente:** "Desculpa, me explica de novo. O que você quer dizer?

Para eu acertar, me ajuda com uma destas:

- Qual parte está péssima: os bonecos, o cenário, a cidade, os botões e menus, ou o jeito de jogar?
- Ou o problema é a ideia em si, ou seja, o que o jogo faz e não como ele parece?

Se for mais fácil, manda um print do que está ruim e me fala como deveria ser."

### 21. 23/11/2026 20:31
**Usuária:** "Qual parte está péssima: os bonecos, o cenário, a cidade, os botões e menus, ou o jeito de jogar?tudo"

**Assistente (resumo):** Refez a VBZ do zero como hotel estilo Habbo, no mesmo link. Descartou a cidade grande e os recortes da imagem.
- **Bonecos:** pequenos, em 4 direções, que andam, sentam, dançam (`:dancar`) e acenam. Entrada de cueca. Roupas peça por peça: 8 blusas, 6 calças, 4 calçados, 5 chapéus (com coroa de ouro) e acessórios, em 12 cores.
- **Quartos:** salas públicas Lobby VBZ, Balada e Praia. Quarto próprio por 2.000 pilas, ampliável de 8×8 até 16×16. Catálogo com 27 móveis em 9 categorias e modo Decorar.
- **Mantidos:** chat ao vivo, pilas (teste), música, caixa e versão de celular.
- **Perdas:** lotes, carros e ônibus. Contas antigas mantêm apelido e pilas, voltam de cueca e ganham 300 pilas.

### 22. 24/11/2026 00:03
**Usuária:** "ola"

**Assistente:** "Olá! A VBZ nova, no estilo Habbo, está no mesmo link: https://claude.ai/artifact/5sSwmvjnKy6Pte3K5jze2x

Já deu para abrir? Me fala o que achou ou o que quer mudar. Se algo estiver estranho, um print ajuda."

### 23. 24/11/2026 00:09
**Usuária:** [anexo, sem texto; pela resposta, o manual de marca da VBZ em PDF]

**Assistente (resumo):** Refez a VBZ seguindo o manual, no mesmo link. O manual mostrou que a VBZ é **uma marca com três experiências** (Social, World, Fashion) e que a "ostentação" deve ser evitada.
- **Social:** fundo off-white, fonte Lato, logo itálico com estrela, paleta do manual. Navegação Home, Feed, World, Friends e Profile. Feed com posts de texto e do visual, curtidas e abas. Friends com "Join the room". Profile com capa de pôr do sol e bio.
- **World:** a cidade estilo Habbo como aba opcional, com Praça VBZ, Lounge (com DJ), Sunset (praia) e quarto próprio.
- **Fashion (VBZ Shop):** linha Core (Boxy Tee, Baby Tee, Tee Symbol, Tee Back Graphic, Hoodie, Zip Jacket) e Edição Final Mix / 26. Saíram coroa, trono e carro.
- Contas antigas mantêm apelido e pilas, com roupa básica. Limitações: posts sem fotos, pagamento de teste, acesso só por convite.

### 24. 24/11/2026 00:19
**Usuária:** "consegue fazer exatamente conforme o pdf"
**Usuária:** "?"

**Assistente (resumo):** Disse que dá para chegar bem perto, mas não 100%.
- **Dá para fazer:** os textos e layouts das páginas 15 e 16 ("Good morning, adri.vbz", Your Circle, Happening Now, abas For You, Friends, Following e Circles, Edit Profile); fotos reais no perfil e nos posts; joystick e botões do World da página 15; menu do World da página 16.
- **Não dá:** gerar por código as fotos de modelos e as ilustrações do PDF. Se houver os arquivos, entram no lugar.
- Fotos enviadas exigem acesso de participante e só aparecem para a mesma organização.

### 25. 24/11/2026 00:20
**Usuária:** "use as  imagens do pdf"

**Assistente (resumo):** Fez a versão com as imagens recortadas do PDF, montada como a página 15: https://claude.ai/artifact/5sSwmvjnKy6Pte3K5jze2x
- **Home:** "Good morning, adri.vbz", "Get in the vibe ✦", Post, World, Shop e Events. Your Circle com luna.vbz, bia.vbz, nando.vbz e rafa.vbz. Card "Lounge Session" com "Join the World →".
- **Feed:** abas For You, Friends, Following e Circles. Posts do PDF, incluindo "Sunset Drive · VBZ Collective", cujo play toca música de verdade. Curtir, salvar e "+ New post".
- **Profile:** capa de palmeiras, "Entrepreneur · Music · Fashion", Edit Profile, bio "Building VBZ." e grade com 6 fotos.
- **World:** joystick que anda de verdade e 4 botões rosa. A praça ganhou o letreiro neon "VBZ Shop" e a estrela no chão.
- **Shop:** banner Final Mix / 26 e peças com fotos reais (Boxy Tee, Baby Tee, Hoodie, Zip Jacket, Back Graphic, Cap), com "provar" no avatar.
- **Ainda diferente do PDF:** as contas e números de exemplo (adri, luna, bia, nando, rafa; 234 posts, 1,2K) aparecem para todo mundo junto com os usuários reais, e o assistente ofereceu tirá-los. O cenário do World continua em pixel art próprio. O avatar é o bonequinho, sem envio de foto, que foi oferecido.
