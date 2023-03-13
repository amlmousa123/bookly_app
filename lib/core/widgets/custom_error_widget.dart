import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({Key? key, required this.errorMsg}) : super(key: key);
  final String errorMsg;
  @override
  Widget build(BuildContext context) {
    return Text(
      errorMsg,
      style: MyStyles.textStyle18,
      textAlign: TextAlign.center,
    );
  }
}
