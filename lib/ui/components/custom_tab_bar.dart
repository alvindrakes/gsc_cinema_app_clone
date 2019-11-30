import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gsc_cinema/res/app_color.dart';
import 'package:gsc_cinema/ui/pages/cinemas_page.dart';
import 'package:gsc_cinema/ui/pages/dynamic_page.dart';

enum CinemaLocation {
  Favourites,
  Southern,
  KlangValley,
  Northern,
  EastCoast,
  EastMalaysia,
}

class CustomTabBar extends StatefulWidget {
  @override
  _CustomTabBarState createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  void _handleTabIndex() {
    setState(() {});
  }

  @override
  void initState() {
    _tabController = TabController(length: 6, vsync: this, initialIndex: 0);
    _tabController.addListener(_handleTabIndex);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.removeListener(_handleTabIndex);
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: TabBar(
          isScrollable: true,
          labelStyle: TextStyle(fontSize: 14),
          labelColor: Colors.white,
          indicatorColor: AppColor.gscYellow,
          indicatorSize: TabBarIndicatorSize.label,
          unselectedLabelColor: Colors.white,
          tabs: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Center(child: Text("Favourites")),
            ),
            Center(child: Text("Southern")),
            Center(child: Text("Klang Valley")),
            Center(child: Text("Nothern")),
            Center(child: Text("East Course")),
            Center(child: Text("East Malaysia")),
          ],
          controller: _tabController,
        ),
      ),
      body: TabBarView(
        physics: NeverScrollableScrollPhysics(),
        children: [
          DynamicPage(
            noContent: true,
          ),
          DynamicPage(
            noContent: false,
          ),
          DynamicPage(
            noContent: false,
          ),
          DynamicPage(
            noContent: false,
          ),
          DynamicPage(
            noContent: false,
          ),
          DynamicPage(
            noContent: false,
          ),
        ],
        controller: _tabController,
      ),
    );
  }
}
