import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_theme_switch/providers/theme_changer_provider.dart';

class DarkTheme extends StatefulWidget {
  const DarkTheme({super.key});

  @override
  State<DarkTheme> createState() => _DarkTheme();
}

class _DarkTheme extends State<DarkTheme> {
    
  @override
  Widget build(BuildContext context) {
        final themeChange = Provider.of<ThemeChange>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Theme Changer"),
      ),
      body: Column(
        children: [
          RadioListTile<ThemeMode>(
            title: Text("Light Mode"),
            value: ThemeMode.light, 
          groupValue: themeChange.themeMode, 
          onChanged: themeChange.setTheme),
            RadioListTile<ThemeMode>(
            title: Text("Dark Mode"),
            value: ThemeMode.dark, 
          groupValue: themeChange.themeMode, 
          onChanged: themeChange.setTheme),
            RadioListTile<ThemeMode>(
            title: Text("System Mode"),
            value: ThemeMode.system, 
          groupValue: themeChange.themeMode, 
          onChanged: themeChange.setTheme)
        ],
      ),
    );
  }
}