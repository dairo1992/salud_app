import 'package:flutter/material.dart';

class CustomBtn extends StatelessWidget {
  final void Function()? onPressed;
  final String label;
  final Color color;

  const CustomBtn(
      {super.key, this.onPressed, required this.label, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      child: MaterialButton(
        disabledColor: Colors.grey,
        elevation: 2,
        highlightElevation: 5,
        onPressed: onPressed,
        color: color,
        shape: const StadiumBorder(),
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.5,
          height: 50,
          child: Center(
            child: onPressed != null
                ? Text(
                    label,
                    style: const TextStyle(color: Colors.white, fontSize: 20),
                  )
                : const CircularProgressIndicator(
                    color: Colors.blue,
                  ),
          ),
        ),
      ),
    );
  }
}
