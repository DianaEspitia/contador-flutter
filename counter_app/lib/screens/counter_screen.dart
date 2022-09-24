import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen ({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int counter = 0; //propiedad

  @override
  Widget build(BuildContext context) {

    const fontSize30 = TextStyle(fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        title: const Text('CounterScreen'),
        elevation: 10.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Clicks counter', style: fontSize30),
            Text('$counter', style: fontSize30,),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked, //para cambiar la posición del botón flotante
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            child: const Icon(Icons.exposure_plus_1),
            onPressed: () => setState(() => counter++), //OPTIOMIZACIÓN DE CÓDIGO
            /*onPressed: (() {
              counter++;
              setState(() {});
              print("Click en botón flotante +1 de HomeScreen: $counter");
            })*/
          ),
          //const SizedBox(width: 20,), //para separar los elementos
          FloatingActionButton(
            child: const Icon(Icons.delete),
            onPressed: (() {
              counter = 0;
              setState(() {});
              print("Click en botón flotante reset de HomeScreen: $counter");
            })
          ),
          //const SizedBox(width: 20,), //para separar los elementos
          FloatingActionButton(
            child: const Icon(Icons.exposure_minus_1),
            onPressed: (() {
              counter--;
              setState(() {});
              print("Click en botón flotante -1 de HomeScreen: $counter");
            }),           
          ),
        ],
      )
    );
  }
}