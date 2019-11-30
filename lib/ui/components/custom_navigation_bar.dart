import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomNavigationBar({@required this.title, @required this.showSearch});

  final String title;
  final bool showSearch;

  @override
  Widget build(BuildContext context) {
    return CupertinoNavigationBar(
      automaticallyImplyMiddle: true,
      actionsForegroundColor: Colors.white,
      backgroundColor: Colors.black.withOpacity(0.4),
      middle: Text(
        title,
        style: TextStyle(color: Colors.white, letterSpacing: 1.0),
      ),
      trailing: showSearch
          ? Icon(
              Icons.search,
              color: Colors.white,
            )
          : Container(),
    );
  }

  @override
  Size get preferredSize {
    return const Size.fromHeight(44.0);
  }
}
