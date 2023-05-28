import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:fluttertoast/fluttertoast.dart';

showLogOutAlertDialog(context) async {
  await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Deconnexion"),
          content: Text("Voulez-vous vous deconnecter?"),
          actions: [
            TextButton(
              child: Text("Oui"),
              onPressed: () async {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text("Non"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      });
}

showAlertDialog(context) async {
  await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Supprimer"),
          content: Text("Voulez-vous vous le supprimer le poste?"),
          actions: [
            TextButton(
              child: Text("Oui"),
              onPressed: () async {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text("Non"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      });
}

ShowSuccessAsomeDialog(context) => AwesomeDialog(
      context: context,
      dialogType: DialogType.success,
      headerAnimationLoop: true,
      animType: AnimType.bottomSlide,
      title: 'supprimer',
      desc: 'Votre poste a ete supprimer',
      buttonsTextStyle: const TextStyle(color: Colors.black),
      showCloseIcon: true,
      autoHide: Duration(seconds: 2),
    )..show();
