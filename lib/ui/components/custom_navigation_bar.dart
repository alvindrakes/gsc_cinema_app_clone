import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gsc_cinema/ui/pages/search_page.dart';

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
          ? GestureDetector(
              onTap: () => Navigator.of(context, rootNavigator: true).push(
                  CupertinoPageRoute(
                      fullscreenDialog: true,
                      builder: (context) => SearchPage())),
              child: Icon(
                Icons.search,
                color: Colors.white,
              ),
            )
          : Container(),
    );
  }

  @override
  Size get preferredSize {
    return const Size.fromHeight(44.0);
  }
}
