import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter/cupertino.dart';
import 'package:beauty_skincare/utils/colors_app/app_colors.dart';

Widget ReusibalText({
  required String text,
}) =>
    Text(text,
      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
    );


/************************* Reusibal ListTile Function  *************************/

ReusibalLsitTile({
  required Text Title,

  required Widget? leading,
   Widget? trailing,
  required void Function()? onTap,
})
=> Container(
  padding: const EdgeInsets.all(02.0),
  margin: const EdgeInsets.all(05.0),

  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(05.0),
    color: Colors.grey.shade100,
  ),

  child: ListTile(
    title: Title,
    leading:leading ,
    trailing: trailing,
    onTap: onTap,
  ),
);

reusibalNeumorphicVal({
  required  String text,
}) => Neumorphic(
      style: NeumorphicStyle(
        color: CWhite,
        shadowDarkColor: Cgrey,
        border: NeumorphicBorder(
          color: CBording
        )
      ),
      padding: EdgeInsets.fromLTRB(20,08,20,08),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              color: CText, fontWeight: FontWeight.w800, fontSize: 18),
        ),
      ),
    );
