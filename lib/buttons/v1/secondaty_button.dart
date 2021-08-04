import 'package:button_animation_prj/buttons/v1/style/button_style.dart';
import 'package:button_animation_prj/buttons/v1/style/button_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../theme.dart';
import 'base/base_button.dart';

class SecondaryButton extends StatelessWidget {
  final String text;
  final Icon? rightIcon;

  const SecondaryButton({Key? key, required this.text, this.rightIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var style = FireButtonStyle.newBuild()
        .setRightIcon(rightIcon)
        .setBackgroundDefaultColor(button_secondary_default)
        .setBackgroundPressedColor(button_secondary_pressed)
        .setBackgroundDisabledColor(button_secondary_disabled)
        .setDefaultStyle(blue_text_style)
        .setBorderColor(button_primary_default)
        .setType(ButtonType.SECONDARY)
        .build();
    return FireButton(text: text, style: style);
  }
}
