import 'package:flutter/material.dart';

import '../../../../theme.dart';
import 'button_state.dart';
import 'button_style.dart';
import 'button_type.dart';

class ButtonBuilder {
  Icon? _rightIcon;

  ButtonType _type = ButtonType.PRIMARY;
  double _cornerRadius = 50;
  int _speedAnimation = 1000;
  bool _isEnabled = true;

  final Map<ButtonState, TextStyle> _textStyle = {
    ButtonState.DEFAULT: white_text_style,
    ButtonState.PRESSED: white_text_style,
    ButtonState.DISABLED: white_disabled_text_style
  };

  final Map<ButtonState, Color> _backgroundColor = {
    ButtonState.DEFAULT: button_primary_default,
    ButtonState.PRESSED: button_primary_pressed,
    ButtonState.DISABLED: button_primary_disabled
  };

  Color _borderColor = button_primary_default;
  Map<ButtonState, Color> _textColor = {
    ButtonState.DEFAULT: button_primary_default,
    ButtonState.PRESSED: button_primary_pressed,
    ButtonState.DISABLED: button_primary_disabled
  };

  ButtonBuilder setBackgroundDefaultColor(Color color) {
    _backgroundColor[ButtonState.DEFAULT] = color;
    return this;
  }

  ButtonBuilder setRightIcon(Icon? icon) {
    _rightIcon = icon;
    return this;
  }

  ButtonBuilder isEnabled(bool isEnabled) {
    _isEnabled = isEnabled;
    return this;
  }

  ButtonBuilder setBackgroundPressedColor(Color color) {
    _backgroundColor[ButtonState.PRESSED] = color;
    return this;
  }

  ButtonBuilder setBackgroundDisabledColor(Color color) {
    _backgroundColor[ButtonState.DISABLED] = color;
    return this;
  }

  ButtonBuilder setBorderColor(Color color) {
    _borderColor = color;
    return this;
  }

  ButtonBuilder setPressedStyle(TextStyle style) {
    _textStyle[ButtonState.PRESSED] = style;
    return this;
  }

  ButtonBuilder setDefaultStyle(TextStyle style) {
    _textStyle[ButtonState.DEFAULT] = style;
    return this;
  }

  ButtonBuilder setDisabledStyle(TextStyle style) {
    _textStyle[ButtonState.DISABLED] = style;
    return this;
  }

  void setTextColorColor(Map<ButtonState, Color> color) => _textColor = color;

  void setCornerRadius(double radius) => _cornerRadius = radius;

  ButtonBuilder setSpeedAnimation(int _peedAnimation) {
    _speedAnimation = _peedAnimation;
    return this;
  }

  ButtonBuilder setType(ButtonType type) {
    _type = type;
    return this;
  }

  FireButtonStyle build() {
    return FireButtonStyle(
        type: _type,
        textStyle: _textStyle,
        isEnabled: _isEnabled,
        rightIcon: _rightIcon,
        speedAnimation: _speedAnimation,
        backgroundColor: _backgroundColor,
        borderColor: _borderColor,
        textColor: _textColor,
        radius: _cornerRadius);
  }
}
