import 'package:flutter/material.dart';
import '../models/interest_item.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MiscScreen extends StatelessWidget {
  const MiscScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _deviceHeight = MediaQuery.of(context).size.height;
    // double _deviceWidth = MediaQuery.of(context).size.width;
    List<InterestItem> _interests = [
      InterestItem(icon: Icon(FontAwesomeIcons.swimmer), interest: 'Surfing'),
      InterestItem(icon: Icon(FontAwesomeIcons.running), interest: 'Fitness'),
      InterestItem(
          icon: Icon(FontAwesomeIcons.utensils), interest: 'Food & Cooking'),
      InterestItem(icon: Icon(FontAwesomeIcons.music), interest: 'Music'),
      InterestItem(
          icon: Icon(FontAwesomeIcons.rocket),
          interest: 'Mars & Space Colonization'),
    ];
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 850),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: _deviceHeight * .015),
                    Text(
                      'Awards',
                      style: TextStyle(
                          fontSize: _deviceHeight * .04,
                          fontWeight: FontWeight.bold),
                    ),
                    ListTile(
                        title: Text('Most innovative thesis'),
                        subtitle: Text('Australian School of Business / 2019')),
                    ListTile(
                        title: Text(
                            'Stafford beer medal - Best paper in European journal of information systems for 2016'),
                        subtitle: Text('Operations Research Society / 2017')),
                    ListTile(
                        title: Text('Most innovative paper'),
                        subtitle: Text(
                            'European Conference on Information Systems / 2014')),
                    SizedBox(height: _deviceHeight * .015),
                    Text(
                      'Interests',
                      style: TextStyle(
                          fontSize: _deviceHeight * .04,
                          fontWeight: FontWeight.bold),
                    ),
                    for (int i = 0; i < _interests.length; i++) ...[
                      ListTile(
                          leading: _interests[i].icon,
                          title: Text(_interests[i].interest)),
                    ]
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
