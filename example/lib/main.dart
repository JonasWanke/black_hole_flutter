import 'package:black_hole_flutter/black_hole_flutter.dart';
import 'package:flutter/material.dart';

import 'buttons.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '🛠 black_hole_flutter example',
      home: Scaffold(
        appBar: AppBar(title: Text('🛠 black_hole_flutter example')),
        body: ListView(children: <Widget>[
          BottomSheetExample(),
          ButtonsExample(),
        ]),
      ),
    );
  }
}

class BottomSheetExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Section(
      title: 'FancyBottomSheet',
      children: <Widget>[
        FancyRaisedButton(
          onPressed: () {
            context.showFancyModalBottomSheet(
              builder: (_) => Padding(
                padding: EdgeInsets.symmetric(vertical: 128, horizontal: 16),
                child: Text("I'm fancy!"),
              ),
            );
          },
          child: Text('Open FancyBottomSheet'),
        ),
      ],
    );
  }
}

class Section extends StatelessWidget {
  const Section({Key key, @required this.title, @required this.children})
      : assert(title != null),
        assert(children != null),
        super(key: key);

  final String title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(title, style: context.textTheme.subhead),
          SizedBox(height: 8),
          ...children
        ],
      ),
    );
  }
}
