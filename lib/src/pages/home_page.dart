import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:salud_app/src/global/environment.dart';
import 'package:salud_app/src/widgets/side_menu.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Environments.colorBlue,
        title: const Text('Home'),
      ),
      drawer: const SideMenu(),
      body: Center(
          child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _Service(
              colors: [
                Environments.colorBlue,
                const Color.fromRGBO(21, 101, 192, 1),
              ],
              icon: FontAwesomeIcons.truckMedical,
              title: 'Medicina Integral',
              onTap: () => print("Titulo"),
            ),
            _Service(
              colors: [
                Environments.colorRed,
                Color.fromRGBO(198, 40, 40, 1),
              ],
              icon: FontAwesomeIcons.tooth,
              title: 'Odontologia',
              onTap: () => print("Titulo"),
            ),
            _Service(
              colors: [
                Colors.green,
                Colors.greenAccent,
              ],
              icon: FontAwesomeIcons.suitcaseMedical,
              title: 'Consulta General',
              onTap: () => print("Titulo"),
            ),
            _Service(
              colors: [
                Colors.amber,
                Colors.yellow,
              ],
              icon: FontAwesomeIcons.circlePlus,
              title: 'Otras Consultas',
              onTap: () => print("Titulo"),
            ),
          ],
        ),
      )),
    );
  }
}

class _Service extends StatelessWidget {
  final IconData icon;
  final String title;
  final List<Color> colors;
  final void Function()? onTap;

  const _Service(
      {super.key,
      required this.icon,
      required this.title,
      required this.colors,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Container(
          width: size.width * 0.9,
          height: size.height * 0.1,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          margin: const EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(colors: colors)),
          child: Row(
            children: [
              Container(
                  margin: const EdgeInsets.only(right: 20),
                  child: Icon(
                    icon,
                    size: 40,
                    color: Colors.white,
                  )),
              Text(
                title,
                style: TextStyle(color: Colors.white, fontSize: 25),
              )
            ],
          )),
    );
  }
}
