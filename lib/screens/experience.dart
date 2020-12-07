import 'package:expandable/expandable.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../helpers/custom_colors.dart';
import '../helpers/open_link.dart';
import '../models/experience_item.dart';

class ExperienceScreen extends StatefulWidget {
  const ExperienceScreen({Key key}) : super(key: key);

  @override
  _ExperienceScreenState createState() => _ExperienceScreenState();
}

class _ExperienceScreenState extends State<ExperienceScreen> {
  List<ExperienceItem> _experienceItems = [
    ExperienceItem(
        role: 'Co-Founder & Lead Developer',
        info: 'Multiple Companies / Brisbane / 2018 - Present',
        description:
            'Designed, developed and launched several platforms using a Flutter, Angular, and Firebase with serverless stack. Most recent platform has proven the ability for a single individual to realistically architect, build, and maintain a full-scale platform with \$0 initial DevOps cost. This reflects the consideration of 1) scalability, 2) the financial realities of startups, and 3) maximized agility.',
        points: [
          'Designed and developed 1) a real-time asset management and data collection app for field researchers and workers, and 2) a social app that encourages users to do real-world activities with others who are either complimentary or similar to them.',
          'Currently launching  a cross-platform, SEO-friendly, P2P food-based app aimed at increasing micro-entrepreneurship and locally sourcing ingredients.',
        ]),
    ExperienceItem(
        role: 'Co-founder & Lead Developer',
        info: 'Luminate QR / Brisbane / 2016 - 2018',
        description:
            'Developed one of the world’s first online qualitative data analysis packages with an aim to help researchers find collaborators based on profile and project data. The stack consisted of an Angular front end with RxJS and Redux patterns, a Firebase backend, and a Neo4j graph database for advanced analytics.',
        points: [
          'Transferred all the functionality and interactivity of traditional desktop qualitative software into an any-platform package that never needed to be upgraded .',
        ]),
    ExperienceItem(
        role: 'Research Fellow & Project Manager',
        info: 'Australian National University / Canberra / 2015 - 2016',
        description:
            'Researcher and Project manager for multi-level stakeholder alignment project involving several government agencies, employment service providers, and job seekers.',
        points: [
          'Research led to 20% cost reduction for the Australian government as well as 35% increase in jobseeker app uptake, both in the first year alone.',
        ]),
    ExperienceItem(
        role: 'Lecturer & Tutor, Information systems',
        info: 'University of New South Wales / Sydney / 2012 - 2014',
        description:
            'Lectured, tutored, and managed classes from undergraduate to PhD levels. Served as reviewer for the International, European, Americas, and Australasian Conferences on Information Systems, as well as Section Editor for the Australian Journal of Information Systems.',
        points: [
          'Won multiple international awards for research and writing, and was consistently in the top 1% of teachers as evidenced by student and staff evaluations ',
          'Published one of the only native theories in the Information Systems discipline.',
        ]),
    ExperienceItem(
        role: 'Senior Consultant, Technology',
        info: 'Deloitte LLP / Washington D.C. / 2011 - 2012',
        description:
            'Often called in to solve previously unsolved and particularly difficult problems. Conducted gap analyses and provided strategic roadmaps to clients. Led projects and mentored junior consultants and business analysts.',
        points: [
          'Led the research & development of the first usable, end-to-end supply chain ontology for the Department of Defense.',
          'Spearheaded the implementation of a semantic search engine for financial crimes.',
          'Collaborated with internal and external stakeholders to form multiple strategic relationships and alliances required for large scale, politically sensitive, enterprise-level projects.',
        ]),
    ExperienceItem(
        role: 'Programer & Systems Engineer',
        info:
            'US Department of Defense / Various Worldwide Locations / 2004 - 2011',
        description:
            'Responsible for a wide range of enterprise applications and systems.',
        points: [
          'Developed a Medical and Casualty Estimator by creating a high-resolution Monte-Carlo simulation using mathematical models programmed in JavaScript.',
          'Transformed installation-wide paper-based system into an automated, paperless process consolidating all requests and permissions into a single online portal.',
          'Led and trained team of 40+ in supporting users worldwide.'
        ]),
  ];

  double _deviceWidth;
  double _deviceHeight;

  @override
  void didChangeDependencies() {
    _deviceWidth = MediaQuery.of(context).size.width;
    _deviceHeight = MediaQuery.of(context).size.height;

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    double _fontSize = 14;
    TextStyle _textStyle = TextStyle(fontSize: _fontSize);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 850),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: _deviceHeight * .02),
                  Text(
                    'Experience',
                    style: TextStyle(
                        fontSize: _deviceHeight * .04,
                        fontWeight: FontWeight.bold),
                  ),
                  for (int i = 0; i < _experienceItems.length; i++) ...[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ExpandablePanel(
                        header: ListTile(
                          title: Text(_experienceItems[i].role),
                          subtitle: Text(_experienceItems[i].info),
                        ),
                        collapsed: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18.0),
                          child: Container(
                            width: double.infinity,
                            alignment: Alignment.topLeft,
                            child: Text(
                              _experienceItems[i].description,
                              softWrap: true,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: _textStyle,
                            ),
                          ),
                        ),
                        expanded: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18.0),
                          child: Column(
                            children: <Widget>[
                              Container(
                                width: double.infinity,
                                alignment: Alignment.topLeft,
                                child: Text(
                                  _experienceItems[i].description,
                                  softWrap: true,
                                  style: _textStyle,
                                ),
                              ),
                              SizedBox(height: _deviceHeight * .01),
                              for (int y = 0;
                                  y < _experienceItems[i].points.length;
                                  y++) ...[
                                Padding(
                                  padding: EdgeInsets.only(
                                      bottom: _deviceHeight * .01),
                                  child: Row(
                                    children: <Widget>[
                                      SizedBox(width: _deviceWidth * .02),
                                      Container(
                                        height: 10.0,
                                        width: 10.0,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                      SizedBox(width: _deviceWidth * .02),
                                      Expanded(
                                        child: Text(
                                          _experienceItems[i].points[y],
                                          softWrap: true,
                                          style: _textStyle,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],

                              /// if this is the first item, show link to LocUs and Axion
                              if (i == 0) ...[
                                SizedBox(
                                  height: _deviceHeight * .01,
                                ),
                                RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () => openLink(
                                          'https://locus.amnion.space',
                                          'LocUs'),
                                    text: 'LocUs Website & Store Links',
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
                                SizedBox(
                                  height: _deviceHeight * .02,
                                ),
                                RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () => openLink(
                                          'https://axion.amnion.space',
                                          'Axion'),
                                    text: 'Axion Website & Store Links',
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
                              ],

                              /// if second item, show link to Luminate demo
                              if (i == 1) ...[
                                SizedBox(
                                  height: _deviceHeight * .01,
                                ),
                                RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () => openLink(
                                          'https://firebasestorage.googleapis.com/v0/b/bounti-dev-34f18.appspot.com/o/luminate.gif?alt=media&token=3bb73e2f-ec1b-4fde-a341-5d523b1647ba',
                                          'Luminate'),
                                    text:
                                        'Demo that was used to compare a single process with a competitor\'s',
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
                              ]
                            ],
                          ),
                        ),
                        tapHeaderToExpand: true,
                        hasIcon: true,
                      ),
                    ),
                    Divider()
                  ]
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
