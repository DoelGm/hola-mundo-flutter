import 'package:flutter/material.dart';

// ignore: camel_case_types
class counterFuntions extends StatefulWidget {
  const counterFuntions({super.key});

  @override
  State<counterFuntions> createState() => _counterFuntionsState();
}

// ignore: camel_case_types
class _counterFuntionsState extends State<counterFuntions> {
  get floatingActionButton => null;

  int contador = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Contador de Cliks')),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  contador = 0;
                });
              },
              icon: const Icon(Icons.refresh_rounded))
        ],
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            '${contador < 0 ? contador = 0 : contador}',
            style: const TextStyle(fontSize: 130, fontWeight: FontWeight.w100),
          ),
          Text(
            'Click${contador == 1 ? '' : 's'}',
            style: const TextStyle(fontSize: 25),
          ),
        ]),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomButton(
            icon: Icons.plus_one,
            onPressed: () {
              setState(() {
                contador++;
              });
            },
          ),
          const SizedBox(
            height: 15,
          ),
          CustomButton(
              icon: Icons.exposure_minus_1,
              onPressed: () {
                setState(() {
                  contador--;
                });
              }),
          const SizedBox(
            height: 15,
          ),
          CustomButton(
              icon: Icons.refresh_outlined,
              onPressed: () {
                setState(() {
                  contador = 0;
                });
              }),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 10,
      backgroundColor: Colors.yellow,
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
