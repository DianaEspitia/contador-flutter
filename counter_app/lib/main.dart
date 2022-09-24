import 'package:counter_app/screens/counter_screen_with_functions_as_arguments.dart';
import 'package:flutter/material.dart';

//import 'package:counter_app/screens/home_screen.dart';
import 'package:counter_app/screens/counter_screen.dart';

void main() {
  runApp(const MyApp()); //ejecutar la aplicación - debemos enviar un widget

}

//Todos los widgets son clases
class MyApp extends StatelessWidget {

  //Este es el constructor de mi clase
  const MyApp({
    Key? key
    }) : super(key: key); //lo establece

  @override
  Widget build(BuildContext context) { //build debe retornar un widget
    return const MaterialApp( //Agregamos const porque sabemos que este widget no va a cambiar - eliminamos warnings
    debugShowCheckedModeBanner: false, //Para quitar el debug que sale en la aplicación
      home: CounterScreenWithFunstionsAsArguments()
    );
  }
}
