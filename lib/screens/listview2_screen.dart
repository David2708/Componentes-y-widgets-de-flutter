import 'package:flutter/material.dart';

import 'package:componentes_flutter/theme/app_theme.dart';

class Listview2Screen extends StatelessWidget {
  final options = const [
    'Megaman',
    'Metal Gear',
    'Super Smash',
    'Final Fantasy'
  ];

  const Listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView Tipo 2'),
        ),
        body: ListView.separated(
            itemCount: options.length,
            itemBuilder: (context, index) => ListTile(
                leading: const Icon(Icons.access_alarm_rounded, color: AppTheme.primary),
                title: Text(options[index]),
                trailing: const Icon(Icons.arrow_forward_ios_outlined, color: AppTheme.primary,),
                onTap: (){
                  final game = options[index];
                  print(game);
                },
            ),
            separatorBuilder: (_, __) => const Divider(),
        )
      );
  }
}
