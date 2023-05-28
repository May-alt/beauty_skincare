import 'package:beauty_skincare/modules/screens/home/home_widgets/build_other_prodct.dart';
import 'package:beauty_skincare/modules/screens/home/home_widgets/header_section.dart';
import 'package:beauty_skincare/modules/screens/home/home_widgets/build_prod_cheveu_section.dart';
import 'package:beauty_skincare/utils/colors_app/app_colors.dart';
import 'package:flutter/material.dart';

import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class HomeViews extends StatefulWidget {
  const HomeViews({Key? key}) : super(key: key);

  @override
  State<HomeViews> createState() => _HomeViewsState();
}

class _HomeViewsState extends State<HomeViews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Column(
            children: [

              Container(
                height: 200,
                color: CBording,
                child: Row(
                  children: [
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "New Collection For Delicate Skin",
                            style: TextStyle(
                                color: CText,
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                fontStyle: FontStyle.italic),
                          ),
                          const SizedBox(
                            height: 12.0,
                          ),
                          Container(
                            width: 150,
                            decoration: BoxDecoration(
                              color: Cbtn,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: TextButton(
                              onPressed: () {
                                print("Shop now".toUpperCase());
                              },
                              child: Text(
                                "Shop Know",
                                style: TextStyle(color: CWhite, fontSize: 18),
                              ),
                            ),
                          )
                        ],
                      ),
                    )),
                    Image.asset("assets/images/bord_img/back.png"),
                  ],
                ),
              ),

              const SizedBox(
                height: 20.0,
              ),

              buildProductCheveu(),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    buildHeaserSection(),
                    const SizedBox(
                      height: 20.0,
                    ),
                    BuildOtherProduct()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
