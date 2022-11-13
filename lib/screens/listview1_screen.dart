
import 'package:componentes_flutter/theme/app_theme.dart';
import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {

  final options = const['Megaman', 'Metal Gear', 'Super Smash', 'Final Fantasy'];
   
  const Listview1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('ListView Tipo 1'),
      ),
      body: ListView(
        children: [

          ...options.map(
            (game) => ListTile(
              leading: const Icon(Icons.access_time, color: AppTheme.primary,),
              title: Text(game),
              trailing: const Icon(Icons.arrow_forward_ios_outlined, color: AppTheme.primary),
            )
          ).toList()

          // ListTile(
          //   leading: Icon(Icons.ac_unit_rounded),
          //   title: Text('Hooa mundo'),
          // )
        ],
      )
    );
  }
}