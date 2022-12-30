import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:salud_app/src/global/environment.dart';
import 'package:salud_app/src/widgets/custom_button.dart';
import 'package:salud_app/src/widgets/custom_input.dart';
import 'package:salud_app/src/widgets/header_auth_custom.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Environments.colorBlue,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              children: [
                const CustomheaderAuth(),
                const _FormState(),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      '¿olvidaste tu contraseña?',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _FormState extends StatefulWidget {
  const _FormState({
    Key? key,
  }) : super(key: key);

  @override
  State<_FormState> createState() => _FormStateState();
}

class _FormStateState extends State<_FormState> {
  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          CustonInput(
              icon: FontAwesomeIcons.user,
              placeholder: 'Usuario',
              textController: emailCtrl),
          CustonInput(
            icon: FontAwesomeIcons.key,
            placeholder: 'Contraseña',
            textController: passCtrl,
            isPasswords: true,
          ),
          const SizedBox(
            height: 50,
          ),
          CustomBtn(
              color: Environments.colorRed,
              label: 'Ingresar',
              onPressed: () {
                print(
                    'Usuario: ${emailCtrl.text} - Contraseña: ${passCtrl.text}');
              })
        ],
      ),
    );
  }
}
