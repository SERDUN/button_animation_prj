import 'package:button_animation_prj/buttons/v1/destructive_button.dart';
import 'package:button_animation_prj/buttons/v1/primary_button.dart';
import 'package:button_animation_prj/buttons/v1/tertiary_button.dart';
import 'package:button_animation_prj/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'buttons/v1/secondaty_button.dart';

class FirePage extends StatefulWidget {
  const FirePage({Key? key}) : super(key: key);

  @override
  _FirePageState createState() => _FirePageState();
}

class _FirePageState extends State<FirePage> {
  @override
  Widget build(BuildContext context) {
    Icon icon = Icon(
      Icons.add,
      color: Colors.black,
    );

    Icon iconBlue = Icon(
      Icons.add,
      color: button_primary_default,
    );

    return Container(
      child: Scaffold(
        backgroundColor: Color(0xff0c112e),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PrimaryButton(text: "Primary button"),
              Divider(),
              PrimaryButton(
                text: "Primary button with icon",
                rightIcon: icon,
              ),
              Divider(),
              PrimaryButton(
                text: "Primary button (Disabled)",
                rightIcon: icon,
                isEnabled: false,
              ),
              Divider(),
              Divider(
                color: Colors.white,
              ),
              Divider(),
              SecondaryButton(text: 'Secondaty button'),
              Divider(),
              SecondaryButton(
                text: 'Secondaty button',
                rightIcon: iconBlue,
              ),
              Divider(),
              Divider(
                color: Colors.white,
              ),
              Divider(),
              TertiaryButton(text: "Tertiary button"),
              Divider(),
              Divider(
                color: Colors.white,
              ),
              Divider(),
              DestructiveButton(text: "Destructive button"),
              Divider(),
              DestructiveButton(
                text: "Destructive button (Disabled)",
                isEnabled: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
