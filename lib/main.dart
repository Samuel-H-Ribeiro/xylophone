import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

main() => runApp(App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.grey),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Xilophone'),
        ),
        body: Column(
          children: [
            criarBotaoXilofone(Colors.red, 1),
            criarBotaoXilofone(Colors.orange, 2),
            criarBotaoXilofone(Colors.yellow, 3),
            criarBotaoXilofone(Colors.green, 4),
            criarBotaoXilofone(Colors.lightGreen, 5),
            criarBotaoXilofone(Colors.blue, 6),
            criarBotaoXilofone(Colors.purple, 6)
          ],
        ),
      ),
    );
  }

  Widget criarBotaoXilofone(Color cor, int numero) {
    return Expanded(
      child: InkWell(
        splashColor: Colors.black38,
        onTap: () {
          AudioPlayer player = AudioPlayer();
          player.play('../assets/sounds/note$numero.wav');
        },
        child: Ink(color: cor),
      ),
    );
  }
}
