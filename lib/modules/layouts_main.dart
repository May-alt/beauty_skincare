
import 'package:beauty_skincare/modules/layouts_screens/cart_screens/cart_views.dart';
import 'package:beauty_skincare/modules/layouts_screens/settings_screens/setting_app.dart';
import 'package:beauty_skincare/modules/screens/favorites/favorite_screens.dart';
import 'package:beauty_skincare/modules/screens/home/home_views.dart';
import 'package:beauty_skincare/modules/screens/profile/profile_views.dart';
import 'package:beauty_skincare/modules/screens/search/search_views.dart';
import 'package:beauty_skincare/utils/colors_app/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter/cupertino.dart';

class LyoutsMain extends StatefulWidget {
  const LyoutsMain({Key? key}) : super(key: key);

  @override
  State<LyoutsMain> createState() => _LyoutsMainState();
}

class _LyoutsMainState extends State<LyoutsMain> {

  int currentIndex =0;
   List Screens = [
     HomeViews(),
     FavoriteViews(),
     SearchViews(),
     ProfileViews(),
   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Best-Skincare",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                new MaterialPageRoute(builder: (context) => CartViews(),)
              );
            },
            icon: Icon(
              Icons.add_shopping_cart_sharp,
              color: CText,
              size: 20,
            ),),
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                  new MaterialPageRoute(builder: (context) => SettingsViews(),)
              );
            },
              icon: Icon(
                CupertinoIcons.settings_solid,
                color: CText,
                size: 20,
              ),),
        ],
      ),

      body: Screens[currentIndex],

      bottomNavigationBar:Container(
        height: 50,
        // color: Colors.amber,
        margin: EdgeInsets.all(10),
        child: GNav(
            tabBorderRadius: 15,
            tabActiveBorder: Border.all(color:AppBackgroundColor, width: 1),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            tabBackgroundColor: Colors.deepOrange.withOpacity(0.2),// navigation bar padding
            gap: 8, // the tab button gap between icon and text
            activeColor:Cbtn, // selected icon and text color
            iconSize: 30, // tab button icon size
            color:Cgrey,
            onTabChange: (index){
              setState(() {
                currentIndex = index;
              });
            },
            tabs: [
              GButton(icon: CupertinoIcons.home, text: 'Home',),
              GButton(icon: CupertinoIcons.heart_fill, text: 'Likes',),
              GButton(icon: CupertinoIcons.search_circle, text: 'Search',),
              GButton(icon: CupertinoIcons.person, text: 'Profile',),
            ]),
      ),
    );
  }
}
