import 'package:beauty_skincare/utils/colors_app/app_colors.dart';
import 'package:beauty_skincare/utils/const_app/const_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter/cupertino.dart';
import 'package:loadmore_listview/loadmore_listview.dart';


class buildsearchsection extends StatelessWidget {
  const buildsearchsection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoadMoreListView.builder(
      shrinkWrap: true,
      //is there more data to load
      hasMoreItem: true,
      //Trigger the bottom loadMore callback
      onLoadMore: () async {
        //wait for your api to fetch more items
        await Future.delayed(const Duration(seconds: 1));
      },
      //pull down refresh callback
      onRefresh: () async {
        //wait for your api to update the list
        await Future.delayed(const Duration(seconds: 1));
      },
      //you can set your loadMore Animation
      loadMoreWidget: Container(
        margin: const EdgeInsets.all(20.0),
        alignment: Alignment.center,
        child: const CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation(CBording),
        ),
      ),
      //ListView
      itemCount: 12,
      itemBuilder: (context, index) {
        return Container(
          color: Colors.white,
          height: 100,
          child: Neumorphic(
            style: NeumorphicStyle(
              color: Colors.white,
             shadowDarkColor: Cgrey
            ),
            padding: EdgeInsets.only(right: 05.0),
            margin: EdgeInsets.only(
                left: 10.0, bottom: 10.0, right: 10.0),

            child: Row(
              children: [
                Container(
                  width: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              "assets/images/bord_img/slid.png"))),
                ),

                Padding(
                  padding:
                  const EdgeInsets.only(top: 20.0, left: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Face wash",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style:
                        TextStyle(fontSize: 18, color: CText),
                      ),
                      SizedBox(height: 08.0,),
                      Text(
                        "\$50",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style:
                        TextStyle(fontSize: 16, color: CText),
                      ),
                    ],
                  ),
                ),

               Spacer(),

                Align(
                alignment: AlignmentDirectional.centerEnd,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Center(
                    child: IconButton(
                      onPressed: () {
                        ShowSuccessAsomeDialog(context);
                      },
                      icon: Icon(Icons.delete, color: Colors.red),
                    ),
                  ),
                ),
              ),
            ]),
          ),
        );
      },
    );
  }
}
