import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';
class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({Key? key, required this.imageUrl}) : super(key: key);
final String imageUrl ;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 2.5/4,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.deepOrange,
            image: const DecorationImage(
                image: AssetImage(AssetsData.testImage,),
                fit: BoxFit.fill
            )
        ),
      ),);
  }
}
