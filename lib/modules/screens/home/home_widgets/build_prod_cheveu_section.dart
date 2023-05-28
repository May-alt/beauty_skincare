import 'package:beauty_skincare/generated/assets.dart';
import 'package:beauty_skincare/utils/colors_app/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:beauty_skincare/data_app/slider_data.dart';

import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter/cupertino.dart';


class buildProductCheveu extends StatelessWidget {
  const buildProductCheveu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Our Cheveu Product ",
                style: TextStyle(color: Colors.black45,fontWeight: FontWeight.bold,fontSize: 18),
              ),
              TextButton(
                onPressed: (){},
                child: Text("See all ",
                  style: TextStyle(fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Cgrey,

                  ),),
              ),

            ],
          )
        ),
        Padding(
          padding: const EdgeInsets.only(left:20.0),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: prodcheveux.map((prod) {
                return Container(
                  height: 280,
                  // color: Colors.amber,
                  margin:EdgeInsets.only(bottom: 10.0) ,
                  padding: EdgeInsets.only(right: 10.0),
                  child: Stack(
                    children: [

                      InkWell(

                        child: Container(
                          height: 265,
                          child: Neumorphic(
                            style: NeumorphicStyle(
                              shape: NeumorphicShape.concave,
                              boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(10.0),),
                              color: Colors.white,
                              shadowLightColor: Colors.white,
                              intensity: 1,
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left: 10.0,right: 10,bottom: 15,top: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  InkWell(
                                    onTap: (){},
                                    child: Image.asset(prod['imagUrl'],
                                      height: 180,
                                      width: 180,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  const SizedBox(height: 08.0,),
                                  Text(prod['titre'],
                                    style: TextStyle(color: Colors.black45,fontSize: 16,fontWeight: FontWeight.bold),
                                  ),
                                  Text(prod['prix'],
                                    style: TextStyle(color: Colors.black45,fontSize: 14,fontWeight: FontWeight.bold),
                                  ),

                                  const SizedBox(height: 08.0,),

                                ],
                              ),
                            ),
                          ),
                        ),
                      ),



                      Positioned(
                        bottom: 0,
                        right: 05.0,
                        child: Container(
                          padding: EdgeInsets.all(15.0),
                          height: 50,
                          decoration: BoxDecoration(
                            color: CBording,
                            borderRadius: BorderRadius.circular(20),

                          ),
                          child: Center(
                            child: Icon(CupertinoIcons.shopping_cart,color: Colors.black,),
                          ),
                        ),
                      ),


                    ] ),

                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}







