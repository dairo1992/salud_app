import 'package:flutter/cupertino.dart';
import 'package:salud_app/src/pages/home_page.dart';
import 'package:salud_app/src/pages/loading_page.dart';
import 'package:salud_app/src/pages/login_page.dart';
import 'package:salud_app/src/pages/register_page.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  'login': (_) => LoginPage(),
  'register': (_) => RegisterPage(),
  'loading': (_) => LoadingPage(),
  'home': (_) => HomePage(),
};
