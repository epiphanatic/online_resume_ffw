import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';
import '../screens/profile.dart';
import './resume_sections.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ResumeScreen extends StatefulWidget {
  static const routeName = '/resume-main';
  ResumeScreen({Key key}) : super(key: key);

  @override
  _ResumeScreenState createState() => _ResumeScreenState();
}

class _ResumeScreenState extends State<ResumeScreen> {
  double _deviceWidth;
  double _deviceHeight;

  final PageController _pageController = PageController();
  // Keep track of current page
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();

    /// Set state when page changes.
    /// This is mainly for if the page is scrolled.
    _pageController.addListener(() {
      int next = _pageController.page.round();

      if (_currentPage != next) {
        setState(() {
          _currentPage = next;
        });
      }
    });
  }

  @override
  void didChangeDependencies() {
    _deviceWidth = MediaQuery.of(context).size.width;
    _deviceHeight = MediaQuery.of(context).size.height;

    super.didChangeDependencies();
  }

  void _toggleLightDarkTheme() {
    if (Theme.of(context).brightness == Brightness.dark) {
      DynamicTheme.of(context).setBrightness(Brightness.light);
    } else {
      DynamicTheme.of(context).setBrightness(Brightness.dark);
    }
  }

  /// not supported atm in flutter web.
  // void _share() {
  //   Share.share(
  //       'Jason Simpson | Flutter Dev https://flutter-ffw-resume.firebaseapp.com/#/');
  // }

  void nextPage() async {
    await _pageController.nextPage(
      duration: Duration(milliseconds: 1000),
      curve: Curves.easeInOut,
    );
  }

  void previousPage() async {
    await _pageController.previousPage(
      duration: Duration(milliseconds: 1000),
      curve: Curves.easeInOut,
    );
  }

  _buildPrevArrow() {
    return Positioned(
      bottom: _deviceHeight * .1,
      right: _deviceWidth * .065,
      child: IconButton(
          color: Theme.of(context).accentColor,
          icon: Icon(FontAwesomeIcons.arrowUp),
          onPressed: _currentPage != 0 ? () => previousPage() : null),
    );
  }

  _buildNextArrow() {
    return Positioned(
      bottom: _deviceHeight * .02,
      right: _deviceWidth * .065,
      child: IconButton(
          color: Theme.of(context).accentColor,
          icon: Icon(FontAwesomeIcons.arrowDown),
          onPressed: (_currentPage != 5) ? () => nextPage() : null),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Jason Simpson',
          style: TextStyle(letterSpacing: 1.5, fontSize: 26),
        ),
        actions: <Widget>[
          /// not supported in flutter web atm.
          // Padding(
          //   padding: EdgeInsets.only(right: _deviceWidth * .01),
          //   child: IconButton(
          //     icon: Icon(FontAwesomeIcons.share),
          //     onPressed: () => _share(),
          //   ),
          // ),
          Padding(
            padding: EdgeInsets.only(right: _deviceWidth * .01),
            child: IconButton(
              icon: Icon(Icons.brightness_4),
              onPressed: () => _toggleLightDarkTheme(),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        // onTap passes the index of selected tab
        onTap: (index) => _pageController.animateToPage(index,
            duration: Duration(milliseconds: 1000), curve: Curves.easeInOut),
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).accentColor,
        currentIndex: _currentPage,
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(FontAwesomeIcons.user),
            title: Text('Profile'),
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(FontAwesomeIcons.lightbulb),
            title: Text('Skills'),
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(FontAwesomeIcons.briefcase),
            title: Text('Experience'),
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(FontAwesomeIcons.userGraduate),
            title: Text('Education'),
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(FontAwesomeIcons.award),
            title: Text('Misc'),
          ),
          // BottomNavigationBarItem(
          //   backgroundColor: Theme.of(context).primaryColor,
          //   icon: Icon(FontAwesomeIcons.mapMarkerAlt),
          //   title: Text('Locations'),
          // ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(FontAwesomeIcons.addressBook),
            title: Text('Contacts'),
          ),
        ],
      ),
      body: Stack(
        children: <Widget>[
          PageView(
            scrollDirection: Axis.vertical,
            controller: _pageController,
            children: [
              ProfileScreen(),
              SkillsScreen(),
              ExperienceScreen(),
              EducationScreen(),
              MiscScreen(),
              // WorkLocationsScreen(),
              ContactScreen(),
            ],
          ),
          _buildPrevArrow(),
          _buildNextArrow(),
        ],
      ),
    );
  }
}
