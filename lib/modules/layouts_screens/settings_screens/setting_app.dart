import 'package:beauty_skincare/utils/const_app/const_app.dart';
import 'package:flutter/material.dart';
import 'package:beauty_skincare/utils/colors_app/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:beauty_skincare/utils/reusibal_widgets_app/reus_widgets.dart';
import 'package:beauty_skincare/utils/colors_app/app_colors.dart';


class SettingsViews extends StatefulWidget {
  const SettingsViews({Key? key}) : super(key: key);

  @override
  State<SettingsViews> createState() => _SettingsViewsState();
}

class _SettingsViewsState extends State<SettingsViews> {
  bool _lights = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            CupertinoIcons.arrow_left,
            color: CText,
            size: 20,
          ),
        ),
        title: Text(
          "Settings",
          style: TextStyle(color: Colors.black),
        ),
      ),


      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [

              ReusibalLsitTile(
                Title: Text("logOut",
                  style: TextStyle(color:CText),
                ),
                leading:Icon(CupertinoIcons.lock,) ,
                onTap: () async{
                  await showLogOutAlertDialog(context);
                  // AuthMethodes().logout();
                },
              ),


              InkWell(
                onTap: (){

                },
                child: Container(
                  color: Colors.grey.shade100,
                  child:  SwitchListTile(
                    title:  Text('Théme',
                      style: TextStyle(),
                    ),
                    value: _lights,
                    onChanged: (bool value) {
                      setState(() {
                        _lights = value;

                      });
                    },
                    secondary: Icon(Icons.light_mode, ),

                  ),
                ),
              )


            ]),
        ),
      ),
    );
  }
}
