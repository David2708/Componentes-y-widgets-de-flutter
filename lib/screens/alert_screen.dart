
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);

  void displatDialogIos(BuildContext context){
    showDialog(
      barrierDismissible: false,
      context: context, 
      builder: (context) {
        return CupertinoAlertDialog(
          
          title: const Text('Titulo'),
          content: Column(
            children: const [
              Text('Ipsum anim Lorem nisi ut mollit dolore voluptate do. Ipsum anim Lorem nisi ut mollit dolore voluptate do'),
              SizedBox(height: 20),
              FlutterLogo( size: 100)
            ],
          ),
          actions: [
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.red
              ),
              onPressed: () => Navigator.pop(context), 
              child:  const Text('Cancelar', style: TextStyle(color: Colors.red) )
            ),

            TextButton(
              onPressed: () => Navigator.pop(context), 
              child: const Text('Ok')
            ),
          ],
        );
      }
    );
  }

  void displayDialogAndroid(BuildContext context){
    showDialog(
      barrierDismissible: false,
      context: context, 
      builder: (context){

        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(15)),
          elevation: 5,
          title: const Text('Titulo'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Este es el contenido de una alerta'),
              SizedBox(height: 20),
              FlutterLogo(size: 100,)
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context), 
              child: const Text('Cancelar', style: TextStyle(color: Colors.red),)
            ),
            TextButton(
              onPressed: () => Navigator.pop(context), 
              child: const Text('Ok')
            )
          ],
        );

      }
      
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(

         child: ElevatedButton(

          onPressed: () => Platform.isAndroid
                          ? displayDialogAndroid(context)
                          :displatDialogIos(context), 

          child: const Padding(
            padding: EdgeInsets.symmetric( horizontal: 20, vertical: 10),
            child: Text('Mostrar Alerta', style: TextStyle( fontSize: 18 )),
          )

         ),

      ),
      floatingActionButton: FloatingActionButton(
        elevation: 5,
        child: const Icon(Icons.close),
        onPressed: (){
          Navigator.pop(context);
        }
        ),
    );
  }
}