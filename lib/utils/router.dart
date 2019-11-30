// handle all routing here
import 'package:flutter/cupertino.dart';
import 'package:gsc_cinema/ui/pages/cinemas_page.dart';
import 'package:gsc_cinema/ui/pages/homepage.dart';
import 'package:gsc_cinema/ui/pages/movies_page.dart';
import 'package:gsc_cinema/utils/routing_constants.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case CinemasPageRoute:
      return CupertinoPageRoute(builder: (context) => CinemasPage());
    case MoviesPageRoute:
      return CupertinoPageRoute(builder: (context) => MoviesPage());
    case HomePageRoute:
      return CupertinoPageRoute(builder: (context) => HomePage());
  }
}
