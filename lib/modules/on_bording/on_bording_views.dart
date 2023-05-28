
import 'package:beauty_skincare/modules/layouts_main.dart';
import 'package:beauty_skincare/utils/colors_app/app_colors.dart';
import 'package:flutter/material.dart';

class OnBordingScreens extends StatefulWidget {
  const OnBordingScreens({Key? key}) : super(key: key);

  @override
  State<OnBordingScreens> createState() => _OnBordingScreensState();
}

class _OnBordingScreensState extends State<OnBordingScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:CBording,
      body: SafeArea(
        child: Container(
        width: double.infinity,
          height: double.infinity,
          // decoration: BoxDecoration(
          //   image: DecorationImage(
          //       image: AssetImage("assets/images/bord_img/back.png"),
          //   fit: BoxFit.fill
          //   ),),
        color:CBording,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [

              Expanded(
                child:Container(

                  decoration: BoxDecoration(
                   //color: Colors.red,
                    image: DecorationImage(
                      image: AssetImage("assets/images/bord_img/back.png"),
                    fit: BoxFit.cover
                    ),
                  ),
                )
              ),

             Padding(
               padding: const EdgeInsets.only(left: 20.0,right: 20.0,bottom: 30.0),
               child: Column(
                 children: [
                   SizedBox(height: 15.0,),
                   Text("Skincare Product \n"
                       " & Cosmetics",
                     textAlign: TextAlign.center,
                     style: TextStyle(color:CText ,fontSize: 37,fontWeight: FontWeight.bold ),

                   ),
                   const SizedBox(height: 15.0,),
                   Text("Beauty gives you the confidence you deserve",
                     textAlign: TextAlign.center,
                     style: TextStyle(color:CTextbording ,fontSize: 16,fontWeight: FontWeight.bold ),
                   ),

                   const SizedBox(height: 25.0,),
                   InkWell(
                     onTap: (){
                       Navigator.of(context).pushReplacement(
                           MaterialPageRoute(builder: (context) => LyoutsMain(),)
                       );
                     },
                     child:  Container(
                       height: 50,
                       decoration: BoxDecoration(
                         color: Color(0xff1e140e),
                         borderRadius:BorderRadius.circular(20.0),
                       ),
                       child: Center(
                         child: Text("Get Started",
                           style: TextStyle(color:CWhite,fontSize: 18 ),
                         ),
                       ),
                     ),
                   ),
                 ],
               ),
             )

            ] ),
        )
      ),
    );
  }
}
