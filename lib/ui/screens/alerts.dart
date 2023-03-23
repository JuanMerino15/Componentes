import 'package:flutter/material.dart';

class AlertsScreen extends StatelessWidget {
  const AlertsScreen({super.key});

  void _mostrarAlert(BuildContext context) {
   
    showDialog(
    context: context,
    barrierDismissible: false,
    barrierColor: Color.fromARGB(255, 78, 83, 81),
    builder: (context){
      return AlertDialog(
        backgroundColor: Color.fromARGB(255, 124, 240, 182),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
         title: const Text('Titulo de la alerta'),
         content: Column(
          mainAxisAlignment: MainAxisAlignment.center,
           children: const [
             Text('contenido de la alerta'),
             FlutterLogo(
              size: 150.0,
             )
           ],
         ),
         actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(), 
            child: const Text('Aceptar')),
          TextButton(
            onPressed: () => Navigator.of(context).pop(), 
            child: const Text('Cancelar')),

         ],
         );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('alert screeen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _mostrarAlert(context),
          child: const Text('Msotrar alertas'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.keyboard_return_outlined),
      ),
    );
  }
}