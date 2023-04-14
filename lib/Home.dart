import 'package:flutter/material.dart';
import 'web_view_container.dart';
class Home extends StatelessWidget {
  final _links = ['https://www.scaler.com/topics/'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text("Click here to visit the website"),
                  SingleChildScrollView(
                      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: _links.map((link) => _urlButton(context, link)).toList(),
    )),
                ],
              ),
            )));
  }
  Widget _urlButton(BuildContext context, String url) {
    return Container(
        padding: EdgeInsets.all(20.0),
        child: FlatButton(
          color: Colors.pink,
          padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0),
          child: Text("Scaler Topics"),
          onPressed: () => _handleURLButtonPress(context, url),
        ));
  }
  void _handleURLButtonPress(BuildContext context, String url) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => WebViewContainer(url)));
  }
}