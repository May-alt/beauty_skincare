import 'package:beauty_skincare/utils/colors_app/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter/cupertino.dart';
import 'package:beauty_skincare/modules/screens/search/search_widgets/build_search_list.dart';



class SearchViews extends StatefulWidget {
  const SearchViews({Key? key}) : super(key: key);

  @override
  State<SearchViews> createState() => _SearchViewsState();
}

class _SearchViewsState extends State<SearchViews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [

            Container(
              alignment: Alignment.bottomCenter,
              height: 200,
              decoration: BoxDecoration(
                color: CBording,
                image: DecorationImage(
                  image: AssetImage("assets/images/bord_img/slid.png"),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 10.0,
                  right: 10.0,
                ),
                child: Neumorphic(
                  style: NeumorphicStyle(
                      color: Colors.white,
                      border: NeumorphicBorder(color: Colors.grey)),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Search of preferd-product..".toUpperCase(),
                      hintStyle: TextStyle(color: Cgrey, fontSize: 14),
                      contentPadding: EdgeInsets.all(15),
                      suffixIcon: IconButton(
                        onPressed: (){},
                        icon: Icon(
                          CupertinoIcons.search_circle,
                          size: 25,
                          color: Cgrey,
                        ),
                      ),
                      border: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),

                    ),
                  ),
                ),
              ),
            ),


            SizedBox(
              height: 20.0,
            ),


            Expanded(child: buildsearchsection())
          ],
        ),
      ),
    );
  }
}
