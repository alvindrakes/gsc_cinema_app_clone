import 'package:flutter/material.dart';
import 'package:gsc_cinema/ui/pages/homepage.dart';
import 'utils/router.dart' as router;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GSC cinema',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
      ),
      onGenerateRoute: router.generateRoute,
      initialRoute: '/',
    );
  }
}
