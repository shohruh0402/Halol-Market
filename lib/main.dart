import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:halolfarm/routers/my_routers.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Locales.init(['en','uz']);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final MyRouter _forroute = MyRouter();

  @override
  Widget build(BuildContext context) {
    return LocaleBuilder(
      builder: (locale) => MaterialApp(
        localizationsDelegates: Locales.delegates,
        supportedLocales: Locales.supportedLocales,
        locale: locale,
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/signup',
        onGenerateRoute: _forroute.onGenerateRoute,
      ),
    );
  }
}
