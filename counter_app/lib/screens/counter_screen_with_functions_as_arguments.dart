import 'package:flutter/material.dart';

class CounterScreenWithFunstionsAsArguments extends StatefulWidget {
  const CounterScreenWithFunstionsAsArguments ({Key? key}) : super(key: key);

  @override
  State<CounterScreenWithFunstionsAsArguments> createState() => _CounterScreenWithFunstionsAsArgumentsState();
}

class _CounterScreenWithFunstionsAsArgumentsState extends State<CounterScreenWithFunstionsAsArguments> {

  int counter = 0; //propiedad

  void increase(){
      counter++;
      setState(() {
        
      });
  }

  void decrease(){
      counter--;
      setState(() {
        
      });
  }

  void reset(){
      counter=0;
      setState(() {
        
      });
  }

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
      floatingActionButton: CustomFloatingAction(increaseFN: increase, decreaseFN: decrease, resetFN: reset,)
    );
  }
}

class CustomFloatingAction extends StatelessWidget {

  final Function increaseFN;
  final Function decreaseFN;
  final Function resetFN;

  const CustomFloatingAction({
    Key? key, 
    required this.increaseFN, required this.decreaseFN, required this.resetFN,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          child: const Icon(Icons.exposure_plus_1),
          onPressed: () => increaseFN(),
        ),
        FloatingActionButton(
          child: const Icon(Icons.delete),
          onPressed: () => resetFN(),
        ),
        FloatingActionButton(
          child: const Icon(Icons.exposure_minus_1),
          onPressed: () => decreaseFN(),          
        ),
      ],
    );
  }
}