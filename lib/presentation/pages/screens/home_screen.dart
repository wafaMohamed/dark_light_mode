import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../provider/dark_them_provider.dart';

class HomeNewsScreen extends StatefulWidget {
  const HomeNewsScreen({Key? key}) : super(key: key);

  @override
  State<HomeNewsScreen> createState() => _HomeNewsScreenState();
}

class _HomeNewsScreenState extends State<HomeNewsScreen> {
  @override
  Widget build(BuildContext context) {
    final themeState = Provider.of<DarkThemeProvider>(context);
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SwitchListTile(
            title: const Text("Theme Mode"),
            secondary: themeState.darkTheme
                ? const Icon(Icons.dark_mode)
                : const Icon(Icons.light_mode),
            value: themeState.darkTheme,
            onChanged: (value) {
              setState(() {
                themeState.setDarkTheme = value;
              });
            },
          ),
        ),
      ),
    );
  }
}
