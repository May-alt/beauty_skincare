import 'package:flutter/material.dart';
import 'package:beauty_skincare/utils/colors_app/app_colors.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:beauty_skincare/data_app/slider_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:beauty_skincare/utils/reusibal_widgets_app/reus_widgets.dart';

class DetailsHomeProducts extends StatelessWidget {




  const DetailsHomeProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Container(
                  height: 300,
                  color: CBording,
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: Icon(
                              Icons.arrow_back,
                              color: CText,
                            )),
                      ),

                     Expanded(
                        child: Center(
                          child: ImageSlideshow(
                              indicatorColor: Colors.transparent,
                              onPageChanged: (value) {
                                debugPrint('Page changed: $value');
                              },
                              autoPlayInterval: 2000,
                              isLoop: true,
                              children: SliderImage.map((img) {
                                return Center(
                                  child: Image.asset(
                                    "${img}",
                                    fit: BoxFit.cover,
                                  ),
                                );
                              }).toList()),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        "Face wash",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 18, color: CText),
                      ),
                    ),
                    Container(
                      height: 35,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: CBording,
                              shape: BoxShape.circle,
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(CupertinoIcons.add, size: 15),
                            ),
                          ),
                          Text("8"),
                          Container(
                            decoration: BoxDecoration(
                              color: CBording,
                              shape: BoxShape.circle,
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(CupertinoIcons.minus, size: 15),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),




              const  SizedBox(height: 20.0,),

                Text("Le Lorem Ipsum est le faux texte standard de"
                    " l'imprimerie depuis les années 1500,"
                    " quand un imprimeur anonyme assembla ensemble ",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 18,fontWeight: FontWeight.w300),
                ),

                const SizedBox(height: 20.0,),


                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    reusibalNeumorphicVal(text: "30ml"),
                    reusibalNeumorphicVal(text: "50ml"),
                    reusibalNeumorphicVal(text: "60ml"),


                  ],
                ),


                SizedBox(height: 30.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Total :",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20, color: CText),
                        ),
                        Text(
                          "5586£",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Cbtn),
                        ),
                      ],
                    ),
                    Neumorphic(
                      style: NeumorphicStyle(
                          color: Cbtn,
                          shadowDarkColor: Cgrey,
                      ),
                      padding: EdgeInsets.fromLTRB(20,08,20,08),
                      child: Center(
                        child: Text(
                          "Shop Know",
                          style: TextStyle(
                              color: CWhite, fontWeight: FontWeight.w800, fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                ),


              ]),
          ),
        ),
      ),
    );
  }
}
