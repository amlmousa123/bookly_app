import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';

class BookingRate extends StatelessWidget {
  const BookingRate(
      {Key? key,
      this.mainAxisAlignment = MainAxisAlignment.start,
      required this.rating,
      required this.count})
      : super(key: key);
  final MainAxisAlignment mainAxisAlignment;
  final num rating;
  final int count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          size: 14,
          color:  Color(0xffFFDD4F),
        ),
        const SizedBox(
          width: 6.3,
        ),
        Text(
          rating.toString(),
          style: MyStyles.textStyle16,
        ),
        const SizedBox(
          width: 5,
        ),
        Opacity(
            opacity: .5,
            child: Text(
              '($count)',
              style: MyStyles.textStyle14.copyWith(fontWeight: FontWeight.w600),
            )),
      ],
    );
  }
}
