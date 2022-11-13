
import 'package:flutter/material.dart';

import 'package:componentes_flutter/models/models.dart';
import 'package:componentes_flutter/screens/screens.dart';



class AppRoutes {

  static String initialRoute = 'home';

  static final menuOptions = <MenuOptions> [
    MenuOptions(route: 'listview1', name: 'ListView Tipo 1', screen: const Listview1Screen(),  icon: Icons.list),
    MenuOptions(route: 'listview2', name: 'ListView Tipo 2', screen: const Listview2Screen(),  icon: Icons.list_alt_outlined),
    MenuOptions(route: 'alert', name: 'Alertas - Alerts', screen: const AlertScreen(),  icon: Icons.add_alert_outlined),
    MenuOptions(route: 'card', name: 'Tarjetas - Cards', screen: const CardScreen(),  icon: Icons.card_membership_rounded),
    MenuOptions(route: 'avatar', name: 'Avatars', screen: const AvatarScreen(),  icon: Icons.supervised_user_circle_outlined),
    MenuOptions(route: 'animated', name: 'Animated', screen: const AnimatedScreen(),  icon: Icons.play_circle_fill_outlined),
    MenuOptions(route: 'inputs', name: 'Inputs Text', screen: const InputScreen(),  icon: Icons.input_outlined),
    MenuOptions(route: 'slider', name: 'Slider & Checks', screen: const SliderScreen(),  icon: Icons.slideshow_rounded),
    MenuOptions(route: 'listviewbuild', name: 'Infinite scroll & Pull to refresh', screen: const ListViewBuildScreen(),  icon: Icons.download_outlined),
  ];

  // static Map<String, Widget Function(BuildContext)> routes = {
  //       'home'     : (BuildContext context) => const HomeScreen(),
  //       'listview1':( BuildContext context) => const Listview1Screen(),
  //       'listview2':( BuildContext context) => const Listview2Screen(),
  //       'alert'    :( BuildContext context) => const AlertScreen(),
  //       'card'     :( BuildContext context) => const CardScreen(),
  // };

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){

    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home'     : (BuildContext context) => const HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({ option.route :( BuildContext context) => option.screen });
    }

    return appRoutes;
  }



  static Route<dynamic> onGenerateRoute (RouteSettings settings) {
    return MaterialPageRoute(
         builder: (context) => const AlertScreen(),
    );
  }
  

}