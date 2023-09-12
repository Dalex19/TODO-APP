import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mi_primera_aplicacion/models/menu_options.dart';
import 'package:mi_primera_aplicacion/views/app_view.dart';
import 'package:mi_primera_aplicacion/views/home_view.dart';
import 'package:mi_primera_aplicacion/views/log_in_view.dart';
import 'package:mi_primera_aplicacion/views/sign_up_view.dart';
import 'package:mi_primera_aplicacion/views/todo_view.dart';

class AppRoutes {
  static const initialRoute = 'initial-route';

  static final menuOptions = <MenuOption>[
    MenuOption(route: 'initial-route', name: 'initial', screen: HomeView()),
    MenuOption(route: 'sign-up', name: 'signup', screen: SignUpView()),
    MenuOption(route: 'log-in', name: 'login', screen: const LogInView()),
    MenuOption(route: 'app', name: 'app', screen: const AppView()),
    MenuOption(route: "add-task", name: "add task", screen: TodoView()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  static Route<dynamic> lostRoutes(RouteSettings settings) {
    return MaterialPageRoute(builder: ((context) => const HomeView()));
  }
}
