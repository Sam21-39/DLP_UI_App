import 'package:dlp_ui_app/UI/ui.dart';
import 'package:dlp_ui_app/Utils/util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: ListView(
        padding: EdgeInsets.all(Util.scale(16.0)),
        children: [
          SizedBox(
            height: Util.height(16.0),
          ),
          Card(
            borderOnForeground: true,
            elevation: 6.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Padding(
              padding: EdgeInsets.all(Util.scale(8.0)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.short_text_rounded,
                        color: UIColor.appColor,
                      ),
                      Icon(
                        Icons.more_vert_rounded,
                        color: UIColor.appColor,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Util.height(8.0),
                  ),
                  CircleAvatar(
                    radius: 40,
                    child: Image.asset(
                      'assets/image/face.png',
                      width: Util.scale(100.0),
                    ),
                  ),
                  SizedBox(
                    height: Util.height(8.0),
                  ),
                  Text(
                    'Hina Riaz',
                    style: UITextStyles.appHighlightedText.copyWith(
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Text(
                    'UI/UX Designer',
                    style: UITextStyles.appInfoText.copyWith(
                      fontSize: Util.fontSize(15),
                    ),
                  ),
                  SizedBox(
                    height: Util.height(32.0),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text(
                            '\$8900',
                            style: UITextStyles.appHighlightedText.copyWith(
                              fontSize: Util.fontSize(16.0),
                            ),
                          ),
                          SizedBox(
                            height: Util.height(8.0),
                          ),
                          Text(
                            'Income',
                            style: UITextStyles.appInfoText.copyWith(
                              fontSize: Util.fontSize(14),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: Util.width(8.0),
                      ),
                      Container(
                        height: Util.height(32.0),
                        width: 1.0,
                        color: UIColor.appIconColor,
                      ),
                      SizedBox(
                        width: Util.width(8.0),
                      ),
                      Column(
                        children: [
                          Text(
                            '\$5500',
                            style: UITextStyles.appHighlightedText.copyWith(
                              fontSize: Util.fontSize(16.0),
                            ),
                          ),
                          SizedBox(
                            height: Util.height(8.0),
                          ),
                          Text(
                            'Expense',
                            style: UITextStyles.appInfoText.copyWith(
                              fontSize: Util.fontSize(14),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: Util.width(8.0),
                      ),
                      Container(
                        height: Util.height(32.0),
                        width: 1.0,
                        color: UIColor.appIconColor,
                      ),
                      SizedBox(
                        width: Util.width(8.0),
                      ),
                      Column(
                        children: [
                          Text(
                            '\$890',
                            style: UITextStyles.appHighlightedText.copyWith(
                              fontSize: Util.fontSize(16.0),
                            ),
                          ),
                          SizedBox(
                            height: Util.height(8.0),
                          ),
                          Text(
                            'Loan',
                            style: UITextStyles.appInfoText.copyWith(
                              fontSize: Util.fontSize(14),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Util.height(32.0),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: Util.height(16.0),
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.all(
                  Util.scale(8.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Overview',
                          style: UITextStyles.appHighlightedText.copyWith(
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        SizedBox(
                          width: Util.width(8.0),
                        ),
                        Icon(
                          Icons.notifications_none,
                          color: UIColor.appColor,
                        ),
                      ],
                    ),
                    Text(
                      'Sep 13, 2020',
                      style: UITextStyles.appHighlightedText.copyWith(
                        fontSize: Util.fontSize(16.0),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
