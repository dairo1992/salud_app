import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomheaderAuth extends StatelessWidget {
  final double sizeIcon;

  const CustomheaderAuth({super.key, this.sizeIcon = 180});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          _TextBtn(
              labelBtnTxt: 'LOG IN',
              onPressed: () {
                Navigator.pushReplacementNamed(context, 'login');
              }),
          _TextBtn(
              labelBtnTxt: 'SIGN UP',
              onPressed: () =>
                  Navigator.pushReplacementNamed(context, 'register')),
        ]),
        const SizedBox(
          height: 30,
        ),
        Center(
          child: Icon(
            FontAwesomeIcons.heartPulse,
            size: sizeIcon,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}

class _TextBtn extends StatelessWidget {
  final void Function()? onPressed;
  final String labelBtnTxt;
  const _TextBtn({
    Key? key,
    this.onPressed,
    required this.labelBtnTxt,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        labelBtnTxt,
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
    );
  }
}
