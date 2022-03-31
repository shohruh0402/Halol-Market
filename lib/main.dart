import 'package:flutter/material.dart';
import 'package:halolfarm/routers/my_routers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 MyApp({Key? key}) : super(key: key);
  final MyRouter _forroute = MyRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/sms',
      onGenerateRoute: _forroute.onGenerateRoute,
    );
  }
}
