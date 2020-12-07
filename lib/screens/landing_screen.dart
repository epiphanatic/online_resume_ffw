import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';
import '../screens/resume_main.dart';
import '../animations/delayed_animation.dart';
import '../widgets/primary_button.dart';

class LandingScreen extends StatelessWidget {
  static const routeName = '/landing';

  @override
  Widget build(BuildContext context) {
    void _toggleLightDarkTheme() {
      if (Theme.of(context).brightness == Brightness.dark) {
        DynamicTheme.of(context).setBrightness(Brightness.light);
      } else {
        DynamicTheme.of(context).setBrightness(Brightness.dark);
      }
    }

    final int delayedAmount = 500;
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Theme.of(context).backgroundColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              SwitchListTile(
                inactiveThumbColor: Theme.of(context).accentColor,
                title: Text('Display Mode'),
                secondary: Icon(Icons.lightbulb_outline),
                value: Theme.of(context).brightness == Brightness.dark
                    ? false
                    : true,
                subtitle: Text(
                  Theme.of(context).brightness == Brightness.dark
                      ? 'Dark'
                      : 'Light',
                ),
                onChanged: (newValue) {
                  _toggleLightDarkTheme();
                },
              ),
              SizedBox(height: mediaQuery.size.height * .05),
              DelayedAimation(
                delay: delayedAmount,
                child: Hero(
                  tag: 'avatar',
                  child: CircleAvatar(
                    radius: 90,
                    child: ClipOval(
                      child: Image.asset('assets/images/0.jpeg'),
                    ),
                  ),
                ),
              ),
              SizedBox(height: mediaQuery.size.height * .02),
              DelayedAimation(
                child: Wrap(
                  alignment: WrapAlignment.center,
                  children: <Widget>[
                    Text(
                      'Jason ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: mediaQuery.size.height * .06,
                      ),
                    ),
                    Text(
                      'Simpson',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: mediaQuery.size.height * .06,
                      ),
                    ),
                  ],
                ),
                delay: delayedAmount,
              ),
              SizedBox(
                height: mediaQuery.size.height * .03,
              ),
              DelayedAimation(
                child: Text(
                  "CTO & Full Stack Developer",
                  style: TextStyle(
                    fontSize: mediaQuery.size.height * .035,
                  ),
                ),
                delay: delayedAmount + 1000,
              ),
              Spacer(),
              DelayedAimation(
                child: AnimatedPrimaryButton(
                  shadow: true,
                  text: 'VIEW RESUMÉ',
                  handler: () =>
                      Navigator.of(context).pushNamed(ResumeScreen.routeName),
                ),
                delay: delayedAmount + 1500,
              ),
              SizedBox(
                height: mediaQuery.size.height * .02,
              ),
              DelayedAimation(
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(
                      top: mediaQuery.size.height * .04, left: 20, right: 20),
                  child: Text(
                    '* Flutter for Web is currently experimental - some items may not render properly',
                    style: TextStyle(fontSize: mediaQuery.size.height * .015),
                    textAlign: TextAlign.center,
                  ),
                ),
                delay: delayedAmount + 2000,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
