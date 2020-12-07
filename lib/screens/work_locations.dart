import 'package:flutter/material.dart';

class WorkLocationsScreen extends StatelessWidget {
  const WorkLocationsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Center(
                child: Text('WorkLocationsScreen'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
