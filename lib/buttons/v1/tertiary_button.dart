import 'package:button_animation_prj/buttons/v1/style/button_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../theme.dart';
import 'base/base_button.dart';

class TertiaryButton extends StatelessWidget {
  final String text;
  final Icon? rightIcon;

  const TertiaryButton({Key? key, required this.text, this.rightIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var style = FireButtonStyle.newBuild()
        .setRightIcon(rightIcon)
        .setBackgroundDefaultColor(button_teriary_default)
        .setBackgroundPressedColor(button_teriary_default)
        .setDefaultStyle(white_text_style)
        .build();
    return FireButton(text: text, style: style);
  }
}
