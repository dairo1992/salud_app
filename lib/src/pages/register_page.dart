import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:salud_app/src/global/environment.dart';
import 'package:salud_app/src/widgets/custom_button.dart';
import 'package:salud_app/src/widgets/custom_input.dart';
import 'package:salud_app/src/widgets/header_auth_custom.dart';

class RegisterPage extends StatelessWidget {
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
  final dateCtrl = TextEditingController();
  final passCtrl = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    dateCtrl.text = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          CustonInput(
              icon: FontAwesomeIcons.userAlt,
              placeholder: 'Nombre',
              textController: emailCtrl),
          CustonInput(
            icon: FontAwesomeIcons.calendarDays,
            placeholder: 'Nacimiento',
            textController: dateCtrl,
            onTap: (() async {
              FocusScope.of(context).unfocus();
              DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(
                      2000), //DateTime.now() - not to allow to choose before today.
                  lastDate: DateTime(2101));
              if (pickedDate != null) {
                print(
                    pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                String formattedDate =
                    DateFormat('yyyy-MM-dd').format(pickedDate);
                print(
                    formattedDate); //formatted date output using intl package =>  2021-03-16
                //you can implement different kind of Date Format here according to your requirement

                setState(() {
                  dateCtrl.text =
                      formattedDate; //set output date to TextField value.
                });
              } else {
                print("Date is not selected");
              }
            }),
          ),
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
          CustomBtn(
              color: Environments.colorRed,
              label: 'Registrarse',
              onPressed: () {
                print(
                    'Usuario: ${emailCtrl.text} - Contraseña: ${passCtrl.text}');
              })
        ],
      ),
    );
  }
}
