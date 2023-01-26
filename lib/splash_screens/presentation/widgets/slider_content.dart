import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/utils/images.dart';

class SliderContent extends StatefulWidget {
  final String imgPath, description;

  const SliderContent(
      {Key? key, required this.imgPath, required this.description})
      : super(key: key);

  @override
  State<SliderContent> createState() => _SliderContentState();
}

class _SliderContentState extends State<SliderContent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          widget.imgPath,
        ),
        Text(
          widget.description,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}
