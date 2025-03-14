import 'package:flutter/material.dart';
import 'package:light_dark_mode/theme/theme_provider.dart';
import 'package:light_dark_mode/widgets/box.dart';
import 'package:light_dark_mode/widgets/button.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: MyBox(
          color: Theme.of(context).primaryColor,
          child: MyButton(
            color: Theme.of(context).secondaryHeaderColor,
            onTap: () {
              Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
            },
          ),
        ),
      ),
    );
  }
}
