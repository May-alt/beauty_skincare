import 'package:beauty_skincare/utils/colors_app/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class ProfileViews extends StatefulWidget {
  const ProfileViews({Key? key}) : super(key: key);

  @override
  State<ProfileViews> createState() => _ProfileViewsState();
}

class _ProfileViewsState extends State<ProfileViews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage("assets/images/prod_img/ph4.jpg"),
              ),
              SizedBox(height: 20,),

              ListTile(
                leading: Icon(CupertinoIcons.person),
                title: Text("Foulen Ben Foulen",),
              ),
              Divider(color: CBording,height: 2,thickness: 1,),
              ListTile(
                leading: Icon(CupertinoIcons.phone_circle),
                title: Text("+(216) 25958609",),
              ),
          ]),
        ),
      ),
    );
  }
}
