

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mi_primera_aplicacion/models/menu_options.dart';
import 'package:mi_primera_aplicacion/views/home_view.dart';
import 'package:mi_primera_aplicacion/views/login_view.dart';
import 'package:mi_primera_aplicacion/views/register_view.dart';

class AppRoutes {

  static const initialRoute = 'login';

  static final menuOptions = <MenuOption> [
    MenuOption(route: 'login', name: 'login', screen: const LoginView()),
    MenuOption(route: 'register', name: 'register', screen: const RegisterView())
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes () {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in menuOptions) {
      appRoutes.addAll({option.route  :( BuildContext context ) => option.screen });
    }
    return appRoutes;
  }

  static Route<dynamic> lostRoutes (RouteSettings settings) {
    return MaterialPageRoute(
      builder: ((context) => const HomeView())
    );
  }

}