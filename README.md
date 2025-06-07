🕹️ Jogo NIM – Projeto Flutter
Este repositório apresenta uma aplicação desenvolvida em Flutter como parte dos requisitos curriculares da ETEC de Carapicuíba. O projeto consiste na implementação do jogo NIM, um jogo de lógica e estratégia com interface gráfica amigável, projetado para rodar em dispositivos móveis.

📱 Sobre o Projeto
O jogo NIM é tradicionalmente jogado com palitos (ou fósforos). Neste projeto, dois jogadores se revezam retirando 1, 2 ou 3 palitos de um total inicial de 21. O jogador que for obrigado a retirar o último palito perde a partida.
Este aplicativo oferece uma experiência interativa e simples, com feedback visual e controle de jogadas em tempo real.

🛠️ Tecnologias Utilizadas
Flutter 3.x
Dart
Material Design

🎮 Funcionalidades
Interface amigável com exibição da quantidade de palitos restantes.
Alternância automática entre os jogadores.
Botões para retirada de 1, 2 ou 3 palitos com controle de disponibilidade.
Mensagem final indicando o jogador perdedor.
Botão de reinício da partida a qualquer momento.

🚧 Estrutura do Código
main.dart: ponto de entrada da aplicação.
NimGameApp: configura o tema e inicializa a tela principal.
NimGameScreen: componente com estado que controla o fluxo do jogo.

Funções auxiliares para:
Alternância de turnos
Controle de fim de jogo
Reinicialização da partida
Exibição de mensagens em AlertDialog

📷 Captura de Tela (opcional)
Adicione aqui uma imagem da tela do jogo, caso deseje apresentar visualmente o projeto.

🚀 Como Executar
Certifique-se de ter o Flutter instalado. Clone o repositório e execute os seguintes comandos:

bash
Copiar
Editar
git clone https://github.com/seu-usuario/jogo-nim-flutter.git
cd jogo-nim-flutter
flutter pub get
flutter run

📚 Créditos
Este projeto foi desenvolvido como parte do curso técnico da ETEC de Carapicuíba, com foco na aplicação prática de Flutter para desenvolvimento mobile multiplataforma.
