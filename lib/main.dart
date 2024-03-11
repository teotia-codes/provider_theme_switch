import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_theme_switch/providers/theme_changer_provider.dart';
import 'package:provider_theme_switch/screens/dark_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(create: (_) =>ThemeChange(),
    child: Builder(builder: (BuildContext context){
      final themeChange = Provider.of<ThemeChange>(context);
      return MaterialApp(
      title: 'Flutter Demo',
      themeMode: themeChange.themeMode ,
      theme: ThemeData(
        brightness: Brightness.light
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark
      ),
      home: const DarkTheme(),
    );
    }) 
    );
  }
}
