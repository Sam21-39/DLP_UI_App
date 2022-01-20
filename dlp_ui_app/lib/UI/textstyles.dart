import 'package:dlp_ui_app/UI/ui.dart';
import 'package:dlp_ui_app/Utils/util.dart';
import 'package:flutter/material.dart';

class UITextStyles {
  static final appBaseText = TextStyle(
    color: UIColor.appFontColor,
    fontFamily: 'Nunito',
    fontSize: Util.fontSize(22),
    fontWeight: FontWeight.w700,
  );

  static final appHighlightedText = TextStyle(
    color: UIColor.appHighlightedFontColor,
    fontFamily: 'Nunito',
    fontSize: Util.fontSize(28),
    fontWeight: FontWeight.w600,
  );

  static final appInfoText = TextStyle(
    color: UIColor.appFontColor,
    fontFamily: 'Nunito',
    fontSize: Util.fontSize(20),
  );
}
