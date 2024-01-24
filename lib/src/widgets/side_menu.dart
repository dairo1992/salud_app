import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:salud_app/src/global/environment.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Environments.colorBlue,
      width: MediaQuery.of(context).size.width * 0.6,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const _DrawerHeader(),
          ListTile(
            leading: const Icon(
              Icons.pages_outlined,
              color: Colors.white,
            ),
            title: const Text(
              'Home',
              style: TextStyle(
                fontSize: 17,
                color: Colors.white,
              ),
            ),
            onTap: () {
              // Navigator.pushReplacementNamed(context, HomeScreen.routeName);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.people_rounded,
              color: Colors.white,
            ),
            title: const Text(
              'People',
              style: TextStyle(
                fontSize: 17,
                color: Colors.white,
              ),
            ),
            onTap: () {
              // Navigator.pushReplacementNamed(context, HomeScreen.routeName);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.settings,
              color: Colors.white,
            ),
            title: const Text(
              'Setting',
              style: TextStyle(
                fontSize: 17,
                color: Colors.white,
              ),
            ),
            onTap: () {
              // Navigator.pushReplacementNamed(context, SettingScreen.routeName);
            },
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.45,
          ),
          ListTile(
            leading: const Icon(
              FontAwesomeIcons.arrowRightFromBracket,
              color: Colors.white,
            ),
            title: const Text(
              'Salir',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onTap: () {
              Navigator.pushReplacementNamed(context, 'login');
            },
          ),
        ],
      ),
    );
  }
}

class _DrawerHeader extends StatelessWidget {
  const _DrawerHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
        child: Column(
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 15),
          child: const Icon(
            FontAwesomeIcons.solidCircleUser,
            color: Colors.white,
            size: 80,
          ),
        ),
        Container(
          color: Colors.white,
          height: 2,
          width: double.infinity,
        )
      ],
    ));
  }
}
