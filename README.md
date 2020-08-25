# GetPlatform

A simple package to get the platform the app is running on, web include.
  
## Getting Started  
  
To use this package, add `get_platform` as a [dependency in your pubspec.yaml file](https://flutter.io/platform-plugins/).  

With this package, you can easily get the plaform you're launching the app on as you would do with the **dart.io** except that with dart.io, you can't have access to web platform. With this package, you can use the function **isWeb** !

## Example  
  
```dart  
import 'package:flutter/material.dart';
import 'package:get_platform/get_platform/get_platform.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(title: 'GetPlatform'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  /// We make basic Stateful app.
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    /// This is a simple ap that will show the platform it's running on.
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        /// Here we get the platform we're on.
        child: Text(GetPlatform.getPlatform()),
      ),
    );
  }
}
```
