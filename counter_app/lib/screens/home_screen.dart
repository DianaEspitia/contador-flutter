import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    const fontSize30 = TextStyle(fontSize: 30);
    int counter = 0; //variables

    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
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
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat, //para cambiar la posición del botón flotante
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: (() {
          counter++;
          print("Click en botón flotante de HomeScreen: $counter");
        }),
        
    )
    );
  }
}