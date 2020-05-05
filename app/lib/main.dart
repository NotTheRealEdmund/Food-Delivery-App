import 'package:flutter/material.dart';
import 'package:bot_toast/bot_toast.dart';

import './Home/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: BotToastInit(),
      title: 'BotToast Demo',
      navigatorObservers: [BotToastNavigatorObserver()],
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
