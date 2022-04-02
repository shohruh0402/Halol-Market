import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';

class ChangeLan extends StatefulWidget {
  const ChangeLan({Key? key}) : super(key: key);

  @override
  State<ChangeLan> createState() => _ChangeLanState();
}

class _ChangeLanState extends State<ChangeLan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            title: Text('English'),
            onTap: () => Locales.change(context, 'en'),
          ),
          ListTile(
            title: Text('Uzbek'),
            onTap: () => Locales.change(context, 'uz'),
          ),
        ],
      ),
    );
  }
}
