import 'package:flutter/material.dart';
import '../widgets/coding_profiles.dart';
import '../widgets/contact_info.dart';
import '../widgets/resumes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _deviceHeight = MediaQuery.of(context).size.height;
    double _deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 850),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(width: double.infinity),
                    Text(
                      'CTO & Full Stack Developer',
                      style: TextStyle(
                          fontSize: _deviceHeight * .04,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: _deviceHeight * .015,
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Hero(
                          tag: 'avatar',
                          child: CircleAvatar(
                            radius: _deviceHeight * .08,
                            child: ClipOval(
                              child: Image.asset('assets/images/0.jpeg'),
                            ),
                          ),
                        ),
                        SizedBox(width: _deviceWidth * .05),
                        ContactInfoWidget(),
                      ],
                    ),
                    SizedBox(height: _deviceHeight * .05),
                    Text(
                      'Full stack developer with a proven understanding of all functional business domains and the ability to think and lead across them. Self-starter with the ability to get to the bottom of technical and organizational problems, as well as quickly pick up new technologies and implement solutions. Architectural planner and systems thinker with a long history of innovation, creative problem solving, and thriving on the cutting-edge. Former consultant with experience leading particularly difficult projects, building strategic relationships, and communicating high level strategic and technical materials to a wide range of audiences at all organizational levels.',
                      style: TextStyle(fontSize: _deviceHeight * .02),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: _deviceHeight * .05),
                    CodingProfilesWidget(),
                    SizedBox(height: _deviceHeight * .05),
                    ResumesWidget(),
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
