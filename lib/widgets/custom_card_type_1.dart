import 'package:flutter/material.dart';
import 'package:componentes_flutter/theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(

      child: Column(
        children: [

          const ListTile(
            leading: Icon(Icons.account_balance_sharp, color: AppTheme.primary,),
            title: Text('Soy un titulo'),
            subtitle: Text('Ea occaecat commodo dolore ad mollit consectetur occaecat reprehenderit do dolore consectetur.'),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [

                TextButton(
                  onPressed: () {},
                  child: const Text('Cancel'),
                ),

                TextButton(
                  onPressed: () {}, 
                  child: const Text('Ok')
                ),

              ],
            ),
          )
        ],
      ),

    );
  }
}