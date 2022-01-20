import 'dart:async';

import 'package:dlp_ui_app/UI/ui.dart';
import 'package:dlp_ui_app/Views/Authentications/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      allowFontScaling: true,
      designSize: Size(480, 640),
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'DLP UI App',
        theme: appTheme(),
        home: Splash(),
      ),
    );
  }

  ThemeData appTheme() => ThemeData(
        appBarTheme: AppBarTheme(
          elevation: 0.0,
          color: Colors.transparent,
        ),
        backgroundColor: UIColor.appBaseColor,
        accentColor: UIColor.appIconColor,
        buttonColor: UIColor.appColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      );
}

class Splash extends StatefulWidget {
  Splash({
    Key key,
  }) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  final finalPosition = FractionalOffset(0.5, 0.0);
  final startPosition = FractionalOffset(0.5, 1);
  bool isAnimated = false;

  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 2),
      () => setState(() => isAnimated = true),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          // resizeToAvoidBottomInset: false,
          appBar: AppBar(),
          backgroundColor: theme.backgroundColor,
          body: Container(
            width: size.width,
            height: size.height,
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                SizedBox(
                  height: size.height * 0.25,
                  child: Stack(
                    children: [
                      AnimatedAlign(
                        alignment: isAnimated ? finalPosition : startPosition,
                        duration: Duration(milliseconds: 800),
                        curve: Curves.fastOutSlowIn,
                        child: Image(
                          image: AssetImage('assets/image/logo.png'),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView(
                    children: [
                      AnimatedOpacity(
                        opacity: isAnimated ? 1.0 : 0.0,
                        duration: Duration(milliseconds: 1000),
                        curve: Curves.easeIn,
                        child: Login(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
