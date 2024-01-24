import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:salud_app/src/helpers/preferences.dart';
import 'package:salud_app/src/routes/routes.dart';
import 'package:salud_app/src/services/auth_service.dart';
import 'package:wakelock/wakelock.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Preferences.init();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthService())
        // ChangeNotifierProvider(
        //   create: (_) => ThemeProvider(isDarkmode: Preferences.isDarkMode),
        // )
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Wakelock.enable();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'loading',
      routes: appRoutes,
    );
  }
}
