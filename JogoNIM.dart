import 'package:flutter/material.dart';

void main() {
  runApp(NimGameApp());
}

class NimGameApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jogo NIM',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: NimGameScreen(),
    );
  }
}

class NimGameScreen extends StatefulWidget {
  @override
  _NimGameScreenState createState() => _NimGameScreenState();
}

class _NimGameScreenState extends State<NimGameScreen> {
  int totalPalitos = 21; // Quantidade inicial de palitos (pode ser customizado pelo usuário)
  int maxRetiradas = 3; // Quantidade máxima de palitos que podem ser retirados por jogada
  int jogadorDaVez = 0; // Alterna entre Jogador 1 (0) e Jogador 2 (1)
  List<String> jogadores = ["Jogador 1", "Jogador 2"]; // Nomes dos jogadores

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jogo NIM'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Palitos restantes: $totalPalitos',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            Text(
              'Vez do ${jogadores[jogadorDaVez]}',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            _buildRemoveButtons(),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _restartGame(),
              child: Text('Reiniciar Jogo'),
            ),
          ],
        ),
      ),
    );
  }

  // Função que cria os botões para retirar 1, 2 ou 3 palitos
  Widget _buildRemoveButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          onPressed: totalPalitos >= 1 ? () => _retirarPalitos(1) : null,
          child: Text('Retirar 1 palito'),
        ),
        ElevatedButton(
          onPressed: totalPalitos >= 2 ? () => _retirarPalitos(2) : null,
          child: Text('Retirar 2 palitos'),
        ),
        ElevatedButton(
          onPressed: totalPalitos >= 3 ? () => _retirarPalitos(3) : null,
          child: Text('Retirar 3 palitos'),
        ),
      ],
    );
  }

  // Função que processa a retirada de palitos e alterna entre os jogadores
  void _retirarPalitos(int quantidade) {
    setState(() {
      totalPalitos -= quantidade;

      if (totalPalitos <= 1) {
        _mostrarResultado("${jogadores[jogadorDaVez]} perdeu!");
      } else {
        jogadorDaVez = (jogadorDaVez + 1) % 2; // Alterna o jogador da vez
      }
    });
  }

  // Função para exibir o diálogo de fim de jogo
  void _mostrarResultado(String mensagem) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Fim de Jogo'),
          content: Text(mensagem),
          actions: <Widget>[
            TextButton(
              child: Text('Reiniciar Jogo'),
              onPressed: () {
                _restartGame();
                Navigator.of(context).pop(); // Fecha o diálogo
              },
            ),
          ],
        );
      },
    );
  }

  // Função para reiniciar o jogo
  void _restartGame() {
    setState(() {
      totalPalitos = 21; // Reseta para 21 palitos
      jogadorDaVez = 0; // Reinicia com o Jogador 1
    });
  }
}
