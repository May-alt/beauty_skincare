import 'package:beauty_skincare/utils/colors_app/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:beauty_skincare/modules/screens/favorites/favorites_widgets/favorite_body.dart';

class FavoriteViews extends StatefulWidget {
  const FavoriteViews({Key? key}) : super(key: key);

  @override
  State<FavoriteViews> createState() => _FavoriteViewsState();
}

class _FavoriteViewsState extends State<FavoriteViews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Toutes les publications enregistré",
              style: TextStyle(color: CText,fontSize: 18,fontWeight: FontWeight.bold),
              ),
             const SizedBox(height: 20.0,),
              Expanded(child: buildFavoriteSection()),
            ],
          ),
        ),
      ),
    );
  }
}

