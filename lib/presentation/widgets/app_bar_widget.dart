// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:ott_flutter_app/core/color/colors.dart';

import 'package:ott_flutter_app/core/color/constants.dart';

// ignore: must_be_immutable
class AppBarWidget extends StatelessWidget {
  String title;
  AppBarWidget({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title,
        style: const TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w900
        ),
       ),
       const Spacer(),
       const Icon(Icons.cast,
       color: kWhiteColor,
       size: 30,),
       kwidth,
       Container(
        color: Colors.blue,
        width: 30,
        height: 30,
       ),
       kwidth,
    ],);
  }
}
