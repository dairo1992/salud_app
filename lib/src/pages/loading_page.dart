import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:salud_app/src/global/environment.dart';

class LoadingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Environments.colorBlue,
      body: FutureBuilder(
        future: checkLoginState(context),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          return SafeArea(
            child: Center(
              child: ZoomIn(
                delay: const Duration(milliseconds: 500),
                duration: const Duration(milliseconds: 1000),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      FontAwesomeIcons.heartPulse,
                      size: 150,
                      color: Colors.white,
                    ),
                    Text('Patient Plus',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold))
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Future checkLoginState(BuildContext context) async {
    await Future.delayed(const Duration(milliseconds: 2000));
    Navigator.pushReplacementNamed(context, 'login');
    // final authService = Provider.of<AuthServices>(context, listen: false);
    // final socketService = Provider.of<SocketService>(context, listen: false);

    // final autenticado = await authService.isLoggedIn();
    // if (autenticado) {
    //   socketService.connect();
    //   // Navigator.pushReplacementNamed(context, 'usuarios');
    //   Navigator.pushReplacement(
    //       context,
    //       PageRouteBuilder(
    //           transitionDuration: const Duration(milliseconds: 0),
    //           pageBuilder: (_, __, ___) => UsuariosPage()));
    // } else {
    //   Navigator.pushReplacement(
    //       context,
    //       PageRouteBuilder(
    //           transitionDuration: const Duration(milliseconds: 0),
    //           pageBuilder: (_, __, ___) => LoginPage()));
    // }
  }
}
