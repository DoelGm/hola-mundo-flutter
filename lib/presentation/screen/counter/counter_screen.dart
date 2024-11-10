import 'package:flutter/material.dart';

// ignore: camel_case_types
class counterScreen extends StatefulWidget {
  const counterScreen({super.key});

  @override
  State<counterScreen> createState() => _counterScreenState();
}

// ignore: camel_case_types
class _counterScreenState extends State<counterScreen> {
  get floatingActionButton => null;

  int contador = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Contador de Cliks')),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            '$contador',
            style: const TextStyle(fontSize: 130, fontWeight: FontWeight.w100),
          ),
          Text(
            'Clik${contador == 1 ? '' : 's'}',
            style: const TextStyle(fontSize: 25),
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            contador++;
          });
        },
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}

/*con(int numeber) {
  String message = '';
  if (numeber > 1 || numeber == 0) {
    return message = 'Cliks';
  } else {
    return message = 'Clik';
  }
}

*/
