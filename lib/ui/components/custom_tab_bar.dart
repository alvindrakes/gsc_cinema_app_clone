import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gsc_cinema/res/app_color.dart';
import 'package:gsc_cinema/ui/pages/cinemas_page.dart';
import 'package:gsc_cinema/ui/pages/dynamic_page.dart';
import 'package:gsc_cinema/ui/pages/small_poster_page.dart';
import 'package:gsc_cinema/utils/device_screen.dart';

enum CinemaLocation {
  Favourites,
  Southern,
  KlangValley,
  Northern,
  EastCoast,
  EastMalaysia,
}

enum movieTime {
  nowShowing,
  advancedSales,
}

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({this.isCinema});
  final bool isCinema;

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
    _tabController = TabController(
        length: widget.isCinema ? 2 : 6, vsync: this, initialIndex: 0);
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
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TabBar(
            isScrollable: true,
            labelStyle: TextStyle(fontSize: 14),
            labelColor: Colors.white,
            indicatorColor: AppColor.gscYellow,
            indicatorSize: TabBarIndicatorSize.label,
            unselectedLabelColor: Colors.white,
            tabs: widget.isCinema
                ? <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Center(child: Text("Now  Showing")),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Center(child: Text("Advance Sales")),
                    ),
                  ]
                : <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Center(child: Text("Favourites")),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Center(child: Text("Southern")),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Center(child: Text("Klang Valley")),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Center(child: Text("Northern")),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Center(child: Text("East Course")),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Center(child: Text("East Malaysia")),
                    ),
                  ],
            controller: _tabController,
          ),
          Container(
            height: DeviceScreen.height * 0.6,
            child: TabBarView(
              controller: _tabController,
              physics: NeverScrollableScrollPhysics(),
              children: widget.isCinema
                  ? [
                      SmallPosterPage(),
                      SmallPosterPage(),
                    ]
                  : [
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
            ),
          ),
        ],
      ),
    );
  }
}
