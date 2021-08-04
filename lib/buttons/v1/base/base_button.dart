import 'package:button_animation_prj/buttons/v1/style/button_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../style/button_style.dart';

class FireButton extends StatefulWidget {
  final String text;
  final FireButtonStyle style;

  const FireButton({Key? key, required this.text, required this.style})
      : super(key: key);

  @override
  _FireButtonState createState() => _FireButtonState();
}

class _FireButtonState extends State<FireButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animatable<Color?> background;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(milliseconds: widget.style.speedAnimation),
      vsync: this,
    );
    background = TweenSequence<Color?>([
      TweenSequenceItem(
        weight: 1.0,
        tween: ColorTween(
          begin: widget.style.getBackgroundDefaultColor(),
          end: widget.style.getBackgroundPressedColor(),
        ),
      ),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanStart: (_) => _controller.forward(),
      onPanEnd: (_) => _controller.reverse(),
      child: SizedBox(height: 44, child: buildWidget()),
    );
  }

  Widget buildWidget() {
    switch (widget.style.type) {
      case ButtonType.PRIMARY:
        return buildPrimaryButton();
      case ButtonType.SECONDARY:
        return buildSecondary();
      case ButtonType.TERTIARY:
        return buildPrimaryButton();
      case ButtonType.DESTRUCTIVE:
        return buildPrimaryButton();
    }
  }

  Widget buildSecondary() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: widget.style.borderColor,
        ),
        borderRadius: BorderRadius.circular(widget.style.radius),
      ),
      child: buildPrimaryButton(),
    );
  }

  Widget buildPrimaryButton() {
    return AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: buildIconWithText(),
            decoration: BoxDecoration(
                color: widget.style.isEnabled
                    ? background
                        .evaluate(AlwaysStoppedAnimation(_controller.value))
                    : widget.style.getBackgroundDisabledColor(),
                borderRadius:
                    BorderRadius.all(Radius.circular(widget.style.radius))),
          );
        });
  }

  Widget buildText() {
    return Text(
      widget.text,
      style: widget.style.isEnabled
          ? widget.style.getTextDefaultStyle()
          : widget.style.getTextDisabledStyle(),
    );
  }

  Widget buildIconWithText() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        widget.style.rightIcon ?? const SizedBox(),
        SizedBox(
          width: widget.style.isRightIconEnabled() ? 16 : 0,
        ),
        buildText()
      ],
    );
  }
}
