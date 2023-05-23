import 'package:flutter/material.dart';
import 'package:storybook_sample/home.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

void main() => runApp(const App());

@WidgetbookApp.material(
  devices: [
    Apple.iPhone13ProMax,
    Samsung.s21ultra,
    Desktop.desktop1080p,
  ],
)
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widgetbook Test',
      debugShowCheckedModeBanner: false,
      theme: getLightTheme(),
      darkTheme: getDarkTheme(),
      home: const Home(title: 'Widgetbook Test'),
    );
  }
}

@WidgetbookTheme(name: "Light theme", isDefault: true)
ThemeData getLightTheme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.black),
    ),
    colorScheme: const ColorScheme.light(
      secondary: Colors.black,
      primary: Colors.black,
    ),
  );
}

@WidgetbookTheme(name: "Dark theme")
ThemeData getDarkTheme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
      iconTheme: IconThemeData(color: Colors.white),
    ),
    colorScheme: const ColorScheme.dark(
      secondary: Colors.white,
      primary: Colors.white,
    ),
  );
}
