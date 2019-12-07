import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gsc_cinema/res/app_color.dart';

class SearchBar extends StatefulWidget implements PreferredSizeWidget {
  @override
  _SearchBarState createState() => _SearchBarState();

  @override
  Size get preferredSize => Size.fromHeight(70.0);
}

SvgPicture search = SvgPicture.asset(
  'icons/search.svg',
  semanticsLabel: 'search',
  height: 16,
  width: 16,
  color: AppColor.textGray,
);

class _SearchBarState extends State<SearchBar> {
  String hintText = 'Enter food name ...';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        height: 70.0,
        color: Colors.grey,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 10.0),
                height: 36.0,
                decoration: BoxDecoration(
                  color: AppColor.dividerGray,
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: TextField(
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.search,
                  maxLines: 1,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(
                      top: 6.0,
                      left: -8,
                    ),
                    border: InputBorder.none,
                    icon: Padding(
                        padding: const EdgeInsets.only(top: 6, left: 10),
                        child: search),
                    hintText: hintText,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 10.0),
              width: 50.0,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Text("Cancel"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
