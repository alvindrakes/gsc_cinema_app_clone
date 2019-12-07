// handle all routing here
import 'package:flutter/cupertino.dart';
import 'package:gsc_cinema/ui/pages/cinemas_page.dart';
import 'package:gsc_cinema/ui/pages/edit_profile_page.dart';
import 'package:gsc_cinema/ui/pages/homepage.dart';
import 'package:gsc_cinema/ui/pages/movies_page.dart';
import 'package:gsc_cinema/ui/pages/undefined_page.dart';
import 'package:gsc_cinema/utils/routing_constants.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case CinemasPageRoute:
      return CupertinoPageRoute(
          builder: (context) => CinemasPage(), settings: settings);
    case MoviesPageRoute:
      return CupertinoPageRoute(
          builder: (context) => MoviesPage(), settings: settings);
    case HomePageRoute:
      return CupertinoPageRoute(
          builder: (context) => HomePage(), settings: settings);
    case EditProfilePageRoute:
      return CupertinoPageRoute(
          builder: (context) => EditProfilePage(), settings: settings);
    default:
      return CupertinoPageRoute(
          builder: (context) => UndefinedPage(), settings: settings);
  }
}
