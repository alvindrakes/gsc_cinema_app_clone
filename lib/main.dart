import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gsc_cinema/res/app_color.dart';
import 'package:gsc_cinema/ui/pages/homepage.dart';
import 'package:gsc_cinema/ui/pages/movies_page.dart';
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
        primaryColor: Colors.white,
        scaffoldBackgroundColor: Colors.black,
        splashColor: Colors.transparent,
        dividerColor: AppColor.dividerGray,
      ),
      onGenerateRoute: router.generateRoute,
      home: HomePage(),
    );
  }
}
