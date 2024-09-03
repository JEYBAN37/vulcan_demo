// ignore: file_names
import 'package:flutter/material.dart';

class Vulcaneject extends StatefulWidget {
  const Vulcaneject({super.key, required this.title});

  final String title;

  @override
  State<Vulcaneject> createState() => _VulcanEjecteState();
}

class _VulcanEjecteState extends State<Vulcaneject> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Explota El Volcan',
              style: TextStyle(fontSize: 30),
            ),
            // Condicional para mostrar la imagen de la bomba si el contador llega a 10
            if (_counter >= 10)
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Image(
                  image: AssetImage('assets/images/bomb.png'),
                  height: 100,
                ),
              ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Image(
                image: AssetImage(
                  'assets/images/volcan.png',
                ),
              ),
            ),
            ElevatedButton(
              onPressed: _incrementCounter,
              child: const Text('Explota'),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
