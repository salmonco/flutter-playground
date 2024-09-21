import 'package:flutter/material.dart';
import 'package:flutter_playground/themes/custom_color.dart';
import 'package:flutter_playground/themes/custom_font.dart';

class IntroduceWord extends StatelessWidget {
  const IntroduceWord({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(text: '이곳은\n', style: CustomTextStyle.title1),
              TextSpan(
                text: '플러터',
                style: CustomTextStyle.title1.copyWith(color: primary),
              ),
              TextSpan(
                text: '놀이터입니다',
                style: CustomTextStyle.title1,
              ),
            ],
          ),
        ),
        Text(
          '안녕하세요\n플러터 테스트입니다',
          style: CustomTextStyle.body3.copyWith(color: darkGray),
        ),
      ],
    );
  }
}