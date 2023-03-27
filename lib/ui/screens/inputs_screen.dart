import 'package:flutter/material.dart';

class InputsScreen extends StatefulWidget {
  const InputsScreen({super.key});

  @override
  State<InputsScreen> createState() => _InputsScreenState();
}

class _InputsScreenState extends State<InputsScreen> {
  String _userName = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Entradas de datos por el usuario'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
        horizontal: 10.0, 
        vertical: 20.0),
        children: [
          _crearEntradaNombre(),
          _crearEntradaPswd(),
        ],
      ),
    );
  }

  Widget _crearEntradaNombre(){
    return TextField(
      autofocus: true,
      textAlign: TextAlign.center,
      textCapitalization: TextCapitalization.sentences,
      style: const TextStyle(
        color: Colors.green,
        fontWeight: FontWeight.bold,
        ),
        cursorColor: Colors.lightBlueAccent,
        cursorRadius: const Radius.circular(8.0),
        cursorWidth: 10.0,
        //maxLength: 15,
        maxLines: null,
      decoration: InputDecoration(
        border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0) ),
        hintText: "Escriba su nombre, por favor",
        labelText: "Nombre: ",
        //helperText: "Nombre", se pone debajo del input
         prefixIcon: const Icon(Icons.person),
         prefixIconColor: Colors.black87,
        //prefix: const CircularProgressIndicator(), hacer un circulito giratorio

      ),

      onChanged: (valor){
        _userName = valor;
        print(_userName);
      },
    );
  }
  Widget _crearEntradaPswd(){
    return TextField(
      autofocus: true,
      textAlign: TextAlign.center,
      textCapitalization: TextCapitalization.sentences,
      style: const TextStyle(
        color: Colors.green,
        fontWeight: FontWeight.bold,
        ),
        cursorColor: Colors.lightBlueAccent,
        cursorRadius: const Radius.circular(8.0),
        cursorWidth: 10.0,
        maxLength: 10,
        obscureText: true,
        keyboardType: TextInputType.number,
      decoration: InputDecoration(
        border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0) ),
        hintText: "Escriba su contraseña, por favor",
        labelText: "Password: ",
        //helperText: "Nombre", se pone debajo del input
         suffixIcon: const Icon(Icons.lock),
         prefixIconColor: Colors.black87,
        //prefix: const CircularProgressIndicator(), hacer un circulito giratorio

      ),

      onChanged: (valor){
        _userName = valor;
        print(_userName);
      },
    );
  }
}
