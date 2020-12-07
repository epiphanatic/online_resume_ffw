import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../helpers/custom_colors.dart';
import '../helpers/open_link.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:html' as html;

class CodingProfilesWidget extends StatelessWidget {
  const CodingProfilesWidget({
    Key key,
  }) : super(key: key);

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
              'Coding Profiles',
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
            Icon(FontAwesomeIcons.github),
            SizedBox(width: _deviceWidth * .01),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: _textStyle,
                children: [
                  TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () =>
                          openLink('https://github.com/epiphanatic', 'Github'),
                    text: 'GitHub',
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
            Icon(FontAwesomeIcons.stackOverflow),
            SizedBox(width: _deviceWidth * .01),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: _textStyle,
                children: [
                  TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => openLink(
                          'https://stackoverflow.com/users/6723846/jason-simpson',
                          'SO'),
                    text: 'Stack Overflow',
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
          ],
        ),
      ],
    );
  }
}
