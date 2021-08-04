import 'package:flutter/material.dart';

import 'builder_style.dart';
import 'button_state.dart';
import 'button_type.dart';

class FireButtonStyle {
  final Map<ButtonState, Color> backgroundColor;
  final Map<ButtonState, Color> textColor;
  final Map<ButtonState, TextStyle> textStyle;
  final ButtonType type;
  final double radius;
  final int speedAnimation;
  final bool isEnabled;
  final Color borderColor;
  final Icon? rightIcon;

  FireButtonStyle(
      {required this.type,
      required this.backgroundColor,
      required this.speedAnimation,
      required this.radius,
      required this.isEnabled,
      required this.textStyle,
      required this.rightIcon,
      required this.borderColor,
      required this.textColor});

  static ButtonBuilder newBuild() {
    return ButtonBuilder();
  }

  Color getBackgroundPressedColor() {
    return backgroundColor[ButtonState.PRESSED] ?? Colors.transparent;
  }

  Color getBackgroundDefaultColor() {
    return backgroundColor[ButtonState.DEFAULT] ?? Colors.transparent;
  }

  Color getBackgroundDisabledColor() {
    return backgroundColor[ButtonState.DISABLED] ?? Colors.transparent;
  }

  TextStyle getTextPressedColorStyle() {
    return textStyle[ButtonState.PRESSED] ?? const TextStyle();
  }

  TextStyle getTextDefaultStyle() {
    return textStyle[ButtonState.DEFAULT] ?? const TextStyle();
  }

  TextStyle getTextDisabledStyle() {
    return textStyle[ButtonState.DISABLED] ?? const TextStyle();
  }

  bool isRightIconEnabled() => rightIcon != null;
}
