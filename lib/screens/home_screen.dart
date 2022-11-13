
import 'package:flutter/material.dart';

import 'package:componentes_flutter/theme/app_theme.dart';
import 'package:componentes_flutter/router/app_routers.dart';


class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes Flutter'),
      ),
      body: ListView.separated(
        itemCount: menuOptions.length,
        itemBuilder:(context, i) => ListTile(
          leading: Icon(menuOptions[i].icon, color: AppTheme.primary,),
          title: Text(menuOptions[i].name),
          trailing: const Icon(Icons.arrow_forward_ios_outlined, color: AppTheme.primary,),
          onTap: (){

            // final route = MaterialPageRoute(
            //   builder: (context) => const Listview1Screen(),
            // );
            // Navigator.push(context, route);
            // Navigator.pushReplacement(context, route); // elimina el context no puedes regresar
            Navigator.pushNamed(context, menuOptions[i].route);

          },
        ), 
        separatorBuilder: ( _ , __ ) => const Divider(), 
        
        )
    );
  }
}