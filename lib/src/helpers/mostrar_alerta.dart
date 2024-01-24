import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

mostrarAlerta(BuildContext context, String titulo, String subtitulo) {
  if (Platform.isAndroid) {
    return showDialog(
      context: context,
      builder: (_) => AlertDialog(
        backgroundColor: Colors.white.withOpacity(0.8),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
        icon: Icon(
          FontAwesomeIcons.triangleExclamation,
          color: Colors.red[400],
          size: 100,
        ),
        title: Text(
          titulo,
          style: TextStyle(color: Colors.blue, fontSize: 20),
        ),
        content: Text(subtitulo,
            style: TextStyle(fontSize: 20), textAlign: TextAlign.center),
        actions: [
          Align(
            alignment: Alignment.center,
            child: MaterialButton(
                elevation: 5,
                minWidth: 120,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                textColor: Colors.blue,
                onPressed: () => Navigator.pop(context),
                child: const Text(
                  'Ok',
                  style: TextStyle(fontSize: 20),
                )),
          )
        ],
      ),
    );
  }
  showCupertinoDialog(
      context: context,
      builder: (_) => CupertinoAlertDialog(
            title: Text(titulo),
            content: Text(subtitulo),
            actions: [
              CupertinoDialogAction(
                isDefaultAction: true,
                child: Text('ok'),
                onPressed: () => Navigator.pop(context),
              )
            ],
          ));
}
