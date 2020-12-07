import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../helpers/custom_colors.dart';
import '../helpers/open_link.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _deviceHeight = MediaQuery.of(context).size.height;
    double _iconSize = _deviceHeight * .02;
    double _fontSize = 10;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        leading: Text('',
            style: TextStyle(
                color: Theme.of(context).backgroundColor, fontSize: 22)),
        title: Text(
          'Contacts',
          style: TextStyle(color: Colors.white, fontSize: 22),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 850),
            child: Column(
              children: <Widget>[
                Container(
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    elevation: 0,
                    clipBehavior: Clip.antiAlias,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Laura Jones',
                            style: Theme.of(context).textTheme.title,
                          ),
                          Text(
                            'Chief Operations Officer',
                            style: Theme.of(context).textTheme.subtitle,
                          ),
                          SizedBox(height: 10),
                          Text(
                            'RapidAIM, Brisbane',
                            style: Theme.of(context).textTheme.subtitle,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: Row(
                              children: <Widget>[
                                Spacer(),
                                Icon(
                                  FontAwesomeIcons.phone,
                                  size: _iconSize,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () => openLink(
                                          'tel:+61 415 784 619', 'LauraPhone'),
                                    text: '+61 415 784 619',
                                    style: TextStyle(
                                      fontSize: _fontSize,
                                      color: Theme.of(context).brightness ==
                                              Brightness.light
                                          ? Colors.green
                                          : kCustomGreenColor,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ),
                                Spacer(),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: <Widget>[
                              Spacer(),
                              Icon(
                                Icons.email,
                                size: _iconSize,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () => openLink(
                                        'mailto:joneslaurakate@gmail.com?subject=Jason Simpson Reference',
                                        'Laura'),
                                  text: 'laura@rapidaim.io',
                                  style: TextStyle(
                                    fontSize: _fontSize,
                                    color: Theme.of(context).brightness ==
                                            Brightness.light
                                        ? Colors.green
                                        : kCustomGreenColor,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                              Spacer(),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    elevation: 0,
                    clipBehavior: Clip.antiAlias,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Patrick Finnegan',
                            style: Theme.of(context).textTheme.title,
                          ),
                          Text(
                            'Professor',
                            style: Theme.of(context).textTheme.subtitle,
                          ),
                          SizedBox(height: 10),
                          Text(
                            'UNSW, Sydney',
                            style: Theme.of(context).textTheme.subtitle,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: Row(
                              children: <Widget>[
                                Spacer(),
                                Icon(
                                  FontAwesomeIcons.phone,
                                  size: _iconSize,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () => openLink(
                                          'tel:+61 2 9385 4449', 'PatPhone'),
                                    text: '+61 2 9385 4449',
                                    style: TextStyle(
                                      fontSize: _fontSize,
                                      color: Theme.of(context).brightness ==
                                              Brightness.light
                                          ? Colors.green
                                          : kCustomGreenColor,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ),
                                Spacer(),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: <Widget>[
                              Spacer(),
                              Icon(
                                Icons.email,
                                size: _iconSize,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () => openLink(
                                        'mailto:p.finnegan@unsw.edu.au?subject=Jason Simpson Reference',
                                        'Pat'),
                                  text: 'p.finnegan@unsw.edu.au',
                                  style: TextStyle(
                                    fontSize: _fontSize,
                                    color: Theme.of(context).brightness ==
                                            Brightness.light
                                        ? Colors.green
                                        : kCustomGreenColor,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                              Spacer(),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    elevation: 0,
                    clipBehavior: Clip.antiAlias,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Ken Stevens',
                            style: Theme.of(context).textTheme.title,
                          ),
                          Text(
                            'Senior Lecturer',
                            style: Theme.of(context).textTheme.subtitle,
                          ),
                          SizedBox(height: 10),
                          Text(
                            'UNSW, Sydney',
                            style: Theme.of(context).textTheme.subtitle,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: Row(
                              children: <Widget>[
                                Spacer(),
                                Icon(
                                  FontAwesomeIcons.phone,
                                  size: _iconSize,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () => openLink(
                                          'tel:+61 2 9385 1000', 'KenPhone'),
                                    text: '+61 2 9385 1000',
                                    style: TextStyle(
                                      fontSize: _fontSize,
                                      color: Theme.of(context).brightness ==
                                              Brightness.light
                                          ? Colors.green
                                          : kCustomGreenColor,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ),
                                Spacer(),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: <Widget>[
                              Spacer(),
                              Icon(
                                Icons.email,
                                size: _iconSize,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () => openLink(
                                        'mailto:k.stevens@unsw.edu.au?subject=Jason Simpson Reference',
                                        'Ken'),
                                  text: 'k.stevens@unsw.edu.au',
                                  style: TextStyle(
                                    fontSize: _fontSize,
                                    color: Theme.of(context).brightness ==
                                            Brightness.light
                                        ? Colors.green
                                        : kCustomGreenColor,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                              Spacer(),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    elevation: 0,
                    clipBehavior: Clip.antiAlias,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Young He',
                            style: Theme.of(context).textTheme.title,
                          ),
                          Text(
                            'Front End Developer',
                            style: Theme.of(context).textTheme.subtitle,
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Novoplan, Brisbane',
                            style: Theme.of(context).textTheme.subtitle,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: Row(
                              children: <Widget>[
                                Spacer(),
                                Icon(
                                  FontAwesomeIcons.phone,
                                  size: _iconSize,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () => openLink(
                                          'tel:+61 420 897 681', 'YoungPhone'),
                                    text: '+61 420 897 681',
                                    style: TextStyle(
                                      fontSize: _fontSize,
                                      color: Theme.of(context).brightness ==
                                              Brightness.light
                                          ? Colors.green
                                          : kCustomGreenColor,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ),
                                Spacer(),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: <Widget>[
                              Spacer(),
                              Icon(
                                Icons.email,
                                size: _iconSize,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () => openLink(
                                        'mailto:jiayangheyoung@gmail.com?subject=Jason Simpson Reference',
                                        'Young'),
                                  text: 'jiayangheyoung@gmail.com',
                                  style: TextStyle(
                                    fontSize: _fontSize,
                                    color: Theme.of(context).brightness ==
                                            Brightness.light
                                        ? Colors.green
                                        : kCustomGreenColor,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                              Spacer(),
                            ],
                          ),
                        ],
                      ),
                    ),
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
