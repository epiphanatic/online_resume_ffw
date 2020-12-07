import 'package:flutter/material.dart';

class EducationScreen extends StatelessWidget {
  const EducationScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _deviceHeight = MediaQuery.of(context).size.height;
    // double _deviceWidth = MediaQuery.of(context).size.width;
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
                    SizedBox(height: _deviceHeight * .02),
                    Text(
                      'Higher Education',
                      style: TextStyle(
                          fontSize: _deviceHeight * .04,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: _deviceHeight * .02),
                    ListTile(
                        title: Text('PhD - Information Systems'),
                        subtitle: Text('UNSW, Australia, 2019')),
                    Divider(),
                    ListTile(
                        title: Text('MBA - Information Systems Concentration'),
                        subtitle: Text('Auburn University, USA, 2010')),
                    Divider(),
                    ListTile(
                        title: Text('BSBA - Information Systems Management'),
                        subtitle: Text('Auburn University, USA, 2004')),
                    SizedBox(height: _deviceHeight * .02),
                    Text(
                      'Online Education',
                      style: TextStyle(
                          fontSize: _deviceHeight * .04,
                          fontWeight: FontWeight.bold),
                    ),
                    ListTile(
                        title: Text('Full Stack Web Developer Nanodegree'),
                        subtitle: Text('Udacity, 2017')),
                    Divider(),
                    ListTile(
                        title: Text('Front End Web Developer Nanodegree'),
                        subtitle: Text('Udacity, 2017')),
                    Divider(),
                    ListTile(
                        title: Text('Design Sprint Foundations Nanodegree'),
                        subtitle: Text('Udacity, 2017')),
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
