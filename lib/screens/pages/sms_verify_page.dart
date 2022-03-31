import 'package:flutter/material.dart';

class SmsVerifyPage extends StatefulWidget {
  const SmsVerifyPage({Key? key}) : super(key: key);

  @override
  State<SmsVerifyPage> createState() => _SmsVerifyPageState();
}

class _SmsVerifyPageState extends State<SmsVerifyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Icon(Icons.close)
        ],
      ),
    );
  }
}
