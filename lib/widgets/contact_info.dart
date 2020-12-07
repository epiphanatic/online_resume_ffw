import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../helpers/custom_colors.dart';
import '../helpers/open_link.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContactInfoWidget extends StatelessWidget {
  const ContactInfoWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _deviceHeight = MediaQuery.of(context).size.height;
    double _deviceWidth = MediaQuery.of(context).size.width;
    double _fontSize = _deviceHeight * .02;
    TextStyle _textStyle = TextStyle(fontSize: _fontSize);
    double _iconSize = _deviceHeight * .02;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            Icon(
              FontAwesomeIcons.phone,
              size: _iconSize,
            ),
            SizedBox(width: _deviceWidth * .02),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: _textStyle,
                children: [
                  TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => openLink('tel:+61 468 462 155', 'Phone'),
                    text: '+61 468 462 155',
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
        Padding(
          padding: EdgeInsets.only(top: _deviceHeight * .01),
          child: Row(
            children: <Widget>[
              Icon(
                Icons.email,
                size: _iconSize,
              ),
              SizedBox(width: _deviceWidth * .02),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: _textStyle,
                  children: [
                    TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => openLink(
                            'mailto:simpson.jason.r@gmail.com?subject=Resumé',
                            'Email'),
                      text: 'simpson.jason.r@gmail.com',
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
        ),
        Padding(
          padding: EdgeInsets.only(top: _deviceHeight * .01),
          child: Row(
            children: <Widget>[
              Icon(
                FontAwesomeIcons.mapMarkerAlt,
                size: _iconSize,
              ),
              SizedBox(width: _deviceWidth * .02),
              Text(
                'Brisbane, Australia \n(Relocating to The Netherlands)',
                style: _textStyle,
                overflow: TextOverflow.fade,
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: _deviceHeight * .01),
          child: Row(
            children: <Widget>[
              Icon(
                FontAwesomeIcons.passport,
                size: _iconSize,
              ),
              SizedBox(width: _deviceWidth * .02),
              Text(
                'Australian Citizen',
                style: _textStyle,
                overflow: TextOverflow.fade,
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: _deviceHeight * .01),
          child: Row(
            children: <Widget>[
              Icon(
                FontAwesomeIcons.language,
                size: _iconSize,
              ),
              SizedBox(width: _deviceWidth * .02),
              Text(
                'English: Native. Dutch: A2 / B1.',
                style: _textStyle,
                overflow: TextOverflow.fade,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
