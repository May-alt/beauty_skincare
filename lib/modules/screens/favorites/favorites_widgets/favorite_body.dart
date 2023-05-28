import 'package:beauty_skincare/utils/colors_app/app_colors.dart';
import 'package:beauty_skincare/utils/const_app/const_app.dart';
import 'package:flutter/material.dart';

class buildFavoriteSection extends StatefulWidget {
  const buildFavoriteSection({Key? key}) : super(key: key);

  @override
  State<buildFavoriteSection> createState() => _buildFavoriteSectionState();
}

class _buildFavoriteSectionState extends State<buildFavoriteSection> {
  @override
  Widget build(BuildContext context) {
     return GridView.builder(
      physics: BouncingScrollPhysics(),
      shrinkWrap: true,
      itemCount:3,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.68,
          mainAxisSpacing: 08.0,
          crossAxisSpacing: 08.0
      ),
      itemBuilder: (context, index) {


        return InkWell(
          onTap: (){
            showAlertDialog(context);

          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: CWhite,
              boxShadow: [
                BoxShadow(
                    color: Colors.black12,
                    blurRadius: 3,
                    offset: Offset(0, 2)
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(top: 03.0),
                      child: Center(
                        child: Image.asset("assets/images/prod_img/ph2.jpg",fit: BoxFit.cover,),
                      ),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.all(05.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Face wash",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis
                            ,style: TextStyle(fontSize: 16,color: CText),),
                          const SizedBox(height: 05.0,),
                          Text("88£",
                            style: TextStyle(fontSize: 16,color: CText),
                          ),
                        ]),
                  ),

                ]),
          ),
        );
      } ,
    );
  }
}
