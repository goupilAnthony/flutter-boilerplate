import 'package:flutter/material.dart';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'dart:io' show Platform;
// if (Platform.isAndroid) {
//     // Android-specific code
//   } else if (Platform.isIOS) {
//     // iOS-specific code
//   }

// kIsWeb

import 'components/customAppBar.dart';
import 'store/global.dart';

final globalStore = GlobalStore();

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
        accentColor: Colors.blueAccent,
        appBarTheme: AppBarTheme(
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
          actionsIconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
      ),
      dark: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.lightBlue,
        accentColor: Colors.lightBlueAccent,
        appBarTheme: AppBarTheme(
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      ),
      initial: AdaptiveThemeMode.dark,
      builder: (theme, darkTheme) => MaterialApp(
        title: 'Full featured demo app',
        theme: theme,
        darkTheme: darkTheme,
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool darkMode = true;
  dynamic savedThemeMode;

  void initState() {
    super.initState();
    getCurrentTheme();
  }

  Future<bool> getCurrentTheme() async {
    savedThemeMode = await AdaptiveTheme.getThemeMode();
    if (savedThemeMode.toString() == 'AdaptiveThemeMode.dark') {
      setState(() {
        darkMode = true;
      });
    } else {
      setState(() {
        darkMode = false;
      });
    }
    return darkMode;
  }

  void toggleTheme() {
    if (darkMode) {
      AdaptiveTheme.of(context).setLight();
      setState(() {
        darkMode = false;
      });
    } else {
      AdaptiveTheme.of(context).setDark();
      setState(() {
        darkMode = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          CustomAppBar(toggleTheme, title: "Full featured", darkmode: darkMode),
      body: Container(),
    );
  }
}
