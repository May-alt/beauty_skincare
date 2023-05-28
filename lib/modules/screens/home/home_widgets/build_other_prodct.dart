
import 'package:beauty_skincare/data_app/slider_data.dart';
import 'package:beauty_skincare/modules/layouts_screens/home_details/home_details.dart';
import 'package:beauty_skincare/utils/colors_app/app_colors.dart';
import 'package:flutter/material.dart';

class BuildOtherProduct extends StatefulWidget {
  const BuildOtherProduct({Key? key}) : super(key: key);

  @override
  State<BuildOtherProduct> createState() => _BuildOtherProductState();
}

class _BuildOtherProductState extends State<BuildOtherProduct> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: BouncingScrollPhysics(),
      shrinkWrap: true,
      itemCount: otherProducts.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        childAspectRatio: 0.68,
        mainAxisSpacing: 08.0,
        crossAxisSpacing: 08.0
      ),
      itemBuilder: (context, index) {


        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: CWhite,
           // border: Border.all(color: Cgrey)
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 4,
                offset: Offset(0, 2)
               ),
            ],
          ),
          child: Column(
            children: [

              Expanded(
                child: Container(
                  // height: 140,
                  // width: 120,
                  child: Center(
                    child: Image.asset(otherProducts[index]["imagUrl"],fit: BoxFit.cover,),
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.all(08.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //Text("Face wash",style: TextStyle(fontSize: 16,color: CText),),
                    Text(otherProducts[index]["titre"],
                         maxLines: 1,
                         overflow: TextOverflow.ellipsis
                         ,style: TextStyle(fontSize: 16,color: CText),),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(otherProducts[index]["prix"],
                        style: TextStyle(fontSize: 16,color: CText),
                        ),
                        CircleAvatar(
                          radius: 15,
                          backgroundColor:CBording ,
                          child: Center(
                            child: IconButton(
                                onPressed: (){
                                  Navigator.of(context).push(

                                    MaterialPageRoute(builder: (context) => DetailsHomeProducts(),),
                                  );
                                },
                                icon: Icon(Icons.arrow_forward_outlined,color: CText,size: 15,)
                            ),
                          ),
                        ),
                      ],
                    )
                  ]),
              ),

            ]),
        );
      } ,
    );
  }
}
