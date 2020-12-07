import 'package:flutter/material.dart';
import '../models/skill_item.dart';
import 'package:transparent_image/transparent_image.dart';

class SkillsScreen extends StatelessWidget {
  const SkillsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _deviceHeight = MediaQuery.of(context).size.height;
    double _deviceWidth = MediaQuery.of(context).size.width;
    double _fontSize = _deviceWidth < 1024 ? 12 : 20;
    TextStyle _textStyle = TextStyle(fontSize: _fontSize, color: Colors.white);
    List<String> _expertiseItems = [
      'Cross-Platform App Development',
      'Scalable, Single-Developer-Maintainable Stacks',
      'Reactive Programming',
      'Responsive Design',
      'Project Management',
      'Strategy & Business Development',
      'Leadership & Mentoring',
      'Research',
      'Writing & Editing',
    ];
    List<SkillItem> _skills = [
      SkillItem(name: 'Flutter', photoUrl: '', infoUrl: ''),
      SkillItem(name: 'Firebase / Firestore', photoUrl: '', infoUrl: ''),
      SkillItem(
          name: 'Cloud Functions / Serverless & Node.js',
          photoUrl: '',
          infoUrl: ''),
      SkillItem(name: 'Angular', photoUrl: '', infoUrl: ''),
      SkillItem(name: 'TypeScript & JavaScript', photoUrl: '', infoUrl: ''),
      SkillItem(name: 'Architectural Planning', photoUrl: '', infoUrl: ''),
      SkillItem(name: 'Creative Thinking', photoUrl: '', infoUrl: ''),
      SkillItem(
          name: 'Initiative & Problem Solving', photoUrl: '', infoUrl: ''),
      SkillItem(
          name: 'Derving, Articulating, & Communicating Insights',
          photoUrl:
              'https://scholar.google.com/citations?view_op=view_photo&user=v-GykskAAAAJ&citpid=5',
          infoUrl:
              'https://scholar.google.com/citations?user=v-GykskAAAAJ&hl=en'),
    ];

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 850),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                    ),
                    SizedBox(height: _deviceHeight * .02),
                    Text(
                      'Expertise',
                      style: TextStyle(
                          fontSize: _deviceHeight * .04,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: _deviceHeight * .02),
                    Wrap(
                      children: <Widget>[
                        for (int i = 0; i < _expertiseItems.length; i++) ...[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(2, 4, 2, 4),
                            child: Container(
                              padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
                              child:
                                  Text(_expertiseItems[i], style: _textStyle),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.0),
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                          )
                        ]
                      ],
                    ),
                    SizedBox(height: _deviceHeight * .05),
                    Text(
                      'Top Skills',
                      style: TextStyle(
                          fontSize: _deviceHeight * .04,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: _deviceHeight * .02),
                    Wrap(
                      children: <Widget>[
                        for (int i = 0; i < _skills.length; i++) ...[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(2, 4, 2, 4),
                            child: Container(
                              padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
                              child: Text(_skills[i].name, style: _textStyle),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.0),
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                          )
                        ]
                      ],
                    ),
                    Container(
                      width: double.infinity,
                    ),
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
