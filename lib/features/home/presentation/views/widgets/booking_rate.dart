import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';
class BookingRate extends StatelessWidget {
  const BookingRate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '19.99 \$',
          style:
          MyStyles.textStyle20.copyWith(fontWeight: FontWeight.bold),
        ),
        Spacer(),
        Icon(FontAwesomeIcons.solidStar,
        color: Color(0xffFFDD4F),),
        SizedBox(width: 6.3,),
        Text('4.8',style: MyStyles.textStyle16,),SizedBox(width: 5,)
        ,Text('(2456)',style: MyStyles.textStyle14.copyWith(color: Color(0xff707070)),),
      ],
    );
  }
}
