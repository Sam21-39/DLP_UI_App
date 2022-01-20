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
            height: Util.scale(24),
          ),
          textCard(
            'Password',
            CupertinoIcons.lock,
            isPassword: true,
          ),
          SizedBox(
            height: Util.scale(24),
          ),
          Container(
            width: size.width * 0.8,
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: UIColor.appColor,
              borderRadius: BorderRadius.circular(50.0),
            ),
            alignment: Alignment.center,
            child: Text(
              'Login',
              style: UITextStyles.appHighlightedText.copyWith(
                fontSize: Util.fontSize(20.0),
                color: Colors.white,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          SizedBox(
            height: Util.scale(16),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Signup',
                  style: UITextStyles.appInfoText,
                ),
                Text(
                  'Forgot Password?',
                  style: UITextStyles.appInfoText,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  var isPassNotVisible = true;
  textCard(
    text,
    icon, {
    isPassword = false,
  }) {
    return Card(
      elevation: 8.0,
      shadowColor: UIColor.appIconColor.withOpacity(0.35),
      borderOnForeground: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
      ),
      child: Container(
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
              obscureText: isPassword && isPassNotVisible,
              cursorColor: UIColor.appColor,
              decoration: InputDecoration(
                focusColor: UIColor.appColor,
                border: InputBorder.none,
                icon: Icon(
                  icon,
                  size: Util.scale(26),
                ),
                suffixIcon: isPassword
                    ? IconButton(
                        icon: Icon(
                          isPassNotVisible
                              ? CupertinoIcons.eye
                              : CupertinoIcons.eye_slash,
                          size: Util.scale(26),
                        ),
                        onPressed: () {
                          setState(() {
                            isPassNotVisible = !isPassNotVisible;
                          });
                          // print(isPassNotVisible);
                        },
                      )
                    : null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
