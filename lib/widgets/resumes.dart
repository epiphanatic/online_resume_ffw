import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../helpers/custom_colors.dart';
import '../helpers/open_link.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:html' as html;

class ResumesWidget extends StatelessWidget {
  const ResumesWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _deviceHeight = MediaQuery.of(context).size.height;
    double _deviceWidth = MediaQuery.of(context).size.width;
    double _fontSize = _deviceHeight * .02;
    TextStyle _textStyle = TextStyle(fontSize: _fontSize);
    // double _iconSize = _deviceHeight * .02;
    return Column(
      children: <Widget>[
        Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Resumé Documents',
              style: Theme.of(context).textTheme.subhead,
            ),
          ],
        ),
        SizedBox(
          height: _deviceHeight * .02,
        ),
        Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(FontAwesomeIcons.apple),
            SizedBox(width: _deviceWidth * .01),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: _textStyle,
                children: [
                  TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => openLink(
                          'https://firebasestorage.googleapis.com/v0/b/bounti-dev-34f18.appspot.com/o/resume_stuff%2FJason%20Simpson%20-%20Resume.pages?alt=media&token=a38b0905-6525-45a7-ba24-b56dd0f0ae78',
                          'Pages'),
                    text: 'Pages',
                    style: TextStyle(
                      color: Theme.of(context).brightness == Brightness.light
                          ? Colors.green
                          : kCustomGreenColor,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: _deviceWidth * .05),
            Icon(FontAwesomeIcons.windows),
            SizedBox(width: _deviceWidth * .01),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: _textStyle,
                children: [
                  TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => openLink(
                          'https://firebasestorage.googleapis.com/v0/b/bounti-dev-34f18.appspot.com/o/resume_stuff%2FJason%20Simpson%20-%20Resume.docx?alt=media&token=5f62d783-b2da-40f4-9f86-b81de9c522f5',
                          'MS Word'),
                    text: 'MS Word',
                    style: TextStyle(
                      color: Theme.of(context).brightness == Brightness.light
                          ? Colors.green
                          : kCustomGreenColor,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
            // SizedBox(width: _deviceWidth * .05),
            // Icon(FontAwesomeIcons.googleDrive),
            // SizedBox(width: _deviceWidth * .02),
            // RichText(
            //   textAlign: TextAlign.center,
            //   text: TextSpan(
            //     style: _textStyle,
            //     children: [
            //       TextSpan(
            //         recognizer: TapGestureRecognizer()
            //           ..onTap = () => openLink('', 'Drive'),
            //         text: 'Google Drive',
            //         style: TextStyle(
            //           color: Theme.of(context).brightness == Brightness.light
            //               ? Colors.green
            //               : kCustomGreenColor,
            //           decoration: TextDecoration.underline,
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ],
    );
  }
}
