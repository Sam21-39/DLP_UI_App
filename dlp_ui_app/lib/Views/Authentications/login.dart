import 'package:dlp_ui_app/UI/ui.dart';
import 'package:dlp_ui_app/Utils/util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
      child: Column(
        children: [
          textCard(
            'Email Address',
            CupertinoIcons.mail,
          ),
          SizedBox(
            height: Util.scale(16),
          ),
          textCard(
            'Password',
            CupertinoIcons.lock,
          ),
          Text('Login'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Signup'),
              Text('Forgot Password?'),
            ],
          ),
        ],
      ),
    );
  }

  textCard(
    text,
    icon,
  ) =>
      Container(
        padding: const EdgeInsets.fromLTRB(
          16.0,
          8.0,
          16.0,
          2.0,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: UITextStyles.appInfoText,
            ),
            TextFormField(
              style: UITextStyles.appBaseText,
              decoration: InputDecoration(
                border: InputBorder.none,
                icon: Icon(
                  icon,
                  size: Util.scale(26),
                ),
              ),
            ),
          ],
        ),
      );
}
