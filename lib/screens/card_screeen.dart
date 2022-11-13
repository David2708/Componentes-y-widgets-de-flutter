import 'package:flutter/material.dart';

import 'package:componentes_flutter/widgets/widgets.dart';



class CardScreen extends StatelessWidget {

  final opciones = const [
    'https://www.xtrafondos.com/descargar.php?id=5846&resolucion=2560x1440',
    'https://www.nationalgeographic.com.es/medio/2018/02/27/playa-de-isuntza-lekeitio__1280x720.jpg',
    'https://elviajerofeliz.com/wp-content/uploads/2015/09/paisajes-de-Canada.jpg'];
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Tarjetas - Cards'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [

          CustomCardType1(),
          SizedBox( height: 20, ),
          CustomCardType2(imageUrl: 'https://www.xtrafondos.com/descargar.php?id=5846&resolucion=2560x1440',),
          SizedBox( height: 50, ),
          CustomCardType2(imageUrl: 'https://www.nationalgeographic.com.es/medio/2018/02/27/playa-de-isuntza-lekeitio__1280x720.jpg',),
          SizedBox( height: 20, ),
          CustomCardType2(name: 'Un Hermoso paisaje' , imageUrl: 'https://elviajerofeliz.com/wp-content/uploads/2015/09/paisajes-de-Canada.jpg'),
          SizedBox( height: 20, ),

          // ...opciones.map(
          //   (url) => Column(
          //     children: [
          //       CustomCardType2(
          //         name: 'paisaje',
          //         imageUrl: url,
          //         ),
          //       const Divider(height: 50,)
          //     ],
          //   ),
          //   ).toList()
          
        ],
      )
    );
  }
}

