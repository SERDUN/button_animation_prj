import 'package:button_animation_prj/buttons/v1/style/button_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../theme.dart';
import 'base/base_button.dart';

class DestructiveButton extends StatelessWidget {
  final String text;
  final Icon? rightIcon;
  final bool isEnabled;

  const DestructiveButton(
      {Key? key, required this.text, this.rightIcon, this.isEnabled = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var style = FireButtonStyle.newBuild()
        .setRightIcon(rightIcon)
        .setBackgroundDefaultColor(button_destructive_default)
        .setBackgroundPressedColor(button_destructive_pressed)
        .setBackgroundDisabledColor(button_destructive_disabled)
        .isEnabled(isEnabled)
        .build();
    return FireButton(text: text, style: style);
  }
}
