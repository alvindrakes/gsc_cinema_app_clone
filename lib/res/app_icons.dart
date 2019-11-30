import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

class AppIcons {
  static final Widget movie = SvgPicture.asset(
    'icons/movie.svg',
    semanticsLabel: 'movies',
  );
  static final Widget marker = SvgPicture.asset(
    'icons/marker.svg',
    semanticsLabel: 'marker',
  );
  static final Widget profile = SvgPicture.asset(
    'icons/profile.svg',
    semanticsLabel: 'profile',
  );
  static final Widget edit = SvgPicture.asset(
    'icons/edit.svg',
    semanticsLabel: 'edit',
    width: 24.0,
    height: 24.0,
    color: Colors.white,
  );
}
