import 'package:beauty_skincare/data_app/slider_data.dart';
import 'package:flutter/material.dart';
import 'package:beauty_skincare/utils/colors_app/app_colors.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class buildHeaserSection extends StatelessWidget {
  const buildHeaserSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Collections ",
          style: TextStyle(fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.black45,

          ),),
        TextButton(
          onPressed: (){},
          child: Text("See all ",
            style: TextStyle(fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Cgrey,

            ),),
        ),
      ],
    );
  }
}







//Padding(
//       padding: const EdgeInsets.only(left: 20.0,top: 05.0),
//       child: Container(
//         // margin:EdgeInsets.only(bottom: 05.0,left: 05.0) ,
//         height: 55,
//         width: double.infinity,
//         child: ListView.separated(
//           separatorBuilder: (context, index) => SizedBox(width: 15.0,),
//           physics: BouncingScrollPhysics(),
//             shrinkWrap: true,
//             itemCount: productName.length,
//             scrollDirection: Axis.horizontal,
//             itemBuilder: (context, index) {
//               return InkWell(
//                 onTap: (){},
//                 child: Neumorphic(
//                   margin:EdgeInsets.all(05) ,
//                   padding: EdgeInsets.all(10),
//                   style: NeumorphicStyle(
//                     shape: NeumorphicShape.flat,
//                     boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12.0),),
//                     color: Colors.white,
//                     shadowLightColor: Colors.transparent,
//                   ),
//                   child: Center(
//                       child: Text(productName[index],
//                         style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500),
//                       ),
//                   ),
//                 ),
//               );
//             },
//         ),
//       ),
//     );