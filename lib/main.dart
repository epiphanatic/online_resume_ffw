import 'package:flutter/material.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import './helpers/custom_colors.dart';
import './helpers/custom_route.dart';
import './screens/landing_screen.dart';
import './screens/resume_main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return DynamicTheme(
      defaultBrightness: Brightness.dark,
      data: (brightness) => ThemeData(
        appBarTheme: AppBarTheme(
          elevation: 0,
          color: brightness == Brightness.light ? Colors.black12 : Colors.black,
          textTheme: TextTheme(
            title: TextStyle(
              color:
                  brightness == Brightness.light ? Colors.black : Colors.white,
            ),
          ),
          iconTheme: brightness == Brightness.light
              ? IconThemeData(color: Colors.black)
              : IconThemeData(color: Colors.white),
        ),
        fontFamily: 'NunitoCust',
        // primary color for dark will always be set to a black shade when Brightness.dark
        primarySwatch:
            brightness == Brightness.light ? Colors.green : kCustomGreenColor,
        accentColor: brightness == Brightness.light ? Colors.amber : null,
        brightness: brightness,
        textTheme: TextTheme(
          body1: TextStyle(fontSize: 18),
          body2: TextStyle(fontSize: 16),
          button: TextStyle(letterSpacing: 1.5, fontWeight: FontWeight.bold),
          headline: TextStyle(fontWeight: FontWeight.bold, fontSize: 36),
          // subhead: TextStyle(
          //     color: brightness == Brightness.light
          //         ? Colors.black87
          //         : Colors.grey),
        ),
        backgroundColor:
            brightness == Brightness.light ? Colors.white : Colors.black,
        textSelectionHandleColor: kCustomGreenColor,
        cursorColor: kCustomGreenColor,
        textSelectionColor: kCustomGreenColor,
        buttonTheme: ButtonThemeData(),
        pageTransitionsTheme: PageTransitionsTheme(
          builders: {
            TargetPlatform.android: CustomPageTransitionBuilder(),
            TargetPlatform.iOS: CustomPageTransitionBuilder(),
          },
        ),
      ),
      themedWidgetBuilder: (context, theme) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          // Firebase Analytics
          // navigatorObservers: [
          //   FirebaseAnalyticsObserver(analytics: FirebaseAnalytics()),
          // ],
          title: 'Jason Simpson - Resume',
          theme: theme,
          home: LandingScreen(),
          routes: {
            LandingScreen.routeName: (ctx) => LandingScreen(),
            ResumeScreen.routeName: (ctx) => ResumeScreen(),
          },
        );
      },
    );
  }
}
