import 'dart:html' as html;

void openLink(String url, String type) async {
  html.window.open(url, type);

  /// url_launcher not working with flutter web atm.
  // if (await canLaunch(url)) {
  //   await launch(url);
  // } else {
  //   throw 'Could not launch $url';
  // }
}
