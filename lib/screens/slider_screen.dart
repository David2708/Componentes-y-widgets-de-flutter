import 'package:flutter/material.dart';

import 'package:componentes_flutter/theme/app_theme.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _sliderValue = 50.0;
  bool _sliderEnable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider & Checks'),
      ),
      body: Column(
        children: [
          Slider.adaptive(
            min: 50,
            max: 400,
            activeColor: AppTheme.primary,
            value: _sliderValue, 
            onChanged: _sliderEnable
             ? (value){
                _sliderValue = value;
                setState(() {});
               }
             : null
          ),

          // Checkbox(
          //   value: _sliderEnable, 
          //   onChanged: (value){
          //     _sliderEnable = value ?? true ;
          //     setState(() {});
          //   }
          // ),
          // Switch(
          //   value: _sliderEnable, 
          //   onChanged: (value) => setState(() { _sliderEnable = value; })
          // ),
          CheckboxListTile(
            activeColor: AppTheme.primary,
            title: const Text('Habilitar slider'),
            value: _sliderEnable, 
            onChanged: (value) => setState(() { _sliderEnable = value ?? true; })
          ),

          
          SwitchListTile.adaptive(
            activeColor: AppTheme.primary,
            title: const Text('Habilitar slider'),
            value: _sliderEnable, 
            onChanged: (value) => setState(() { _sliderEnable = value; })
          ),

          const AboutListTile(),
          
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage('https://static.wikia.nocookie.net/personajes-de-ficcion-database/images/d/d9/Goku_DBZ_Base.png/revision/latest?cb=20201216115006&path-prefix=es'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          ),

          const SizedBox(height: 20,)
        ],
      )
    );
  }
}