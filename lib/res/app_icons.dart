import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gsc_cinema/res/app_color.dart';

class AppIcons {
  static Widget movie = SvgPicture.asset(
    'icons/movie.svg',
    semanticsLabel: 'movies',
    color: Colors.grey,
    width: 24,
    height: 24,
  );
  static final Widget marker = SvgPicture.asset(
    'icons/marker.svg',
    color: Colors.grey,
    semanticsLabel: 'marker',
    width: 24,
    height: 24,
  );
  static final Widget profile = SvgPicture.asset(
    'icons/profile.svg',
    color: Colors.grey,
    semanticsLabel: 'profile',
    width: 24,
    height: 24,
  );
  static Widget movieFilled = SvgPicture.asset(
    'icons/movie.svg',
    semanticsLabel: 'movies_filled',
    color: AppColor.gscYellow,
    width: 24,
    height: 24,
  );
  static final Widget markerFilled = SvgPicture.asset(
    'icons/marker.svg',
    color: AppColor.gscYellow,
    semanticsLabel: 'marker_filled',
    width: 24,
    height: 24,
  );
  static final Widget profileFilled = SvgPicture.asset(
    'icons/profile.svg',
    color: AppColor.gscYellow,
    semanticsLabel: 'profile-filled',
    width: 24,
    height: 24,
  );
  static final Widget edit = SvgPicture.asset(
    'icons/edit.svg',
    semanticsLabel: 'edit',
    width: 24.0,
    height: 24.0,
    color: Colors.white,
  );
}
