import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gsc_cinema/res/app_color.dart';
import 'package:gsc_cinema/res/app_icons.dart';
import 'package:gsc_cinema/utils/tab_items.dart';

class CupertinoHomeScaffold extends StatelessWidget {
  CupertinoHomeScaffold({
    @required this.currentTab,
    @required this.onSelectTab,
    @required this.widgetBuilders,
    @required this.navigatorKeys,
  });

  final TabItem currentTab;
  final ValueChanged<TabItem> onSelectTab;
  final Map<TabItem, WidgetBuilder> widgetBuilders;
  final Map<TabItem, GlobalKey<NavigatorState>> navigatorKeys;

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        backgroundColor: Colors.black.withOpacity(0.5),
        items: [
          _buildItem(TabItem.movies),
          _buildItem(TabItem.cinemas),
          _buildItem(TabItem.me),
        ],
        onTap: (index) => onSelectTab(TabItem.values[index]),
      ),
      tabBuilder: (context, index) {
        final item = TabItem.values[index];
        return CupertinoTabView(
          navigatorKey: navigatorKeys[item],
          builder: (context) => widgetBuilders[item](context),
        );
      },
    );
  }

  SvgPicture getTabIcon(TabItem currentTab, TabItem tabItem) {
    if (currentTab == tabItem) {
      return _tabSelectedImages[tabItem];
    } else {
      return _tabImages[tabItem];
    }
  }

  BottomNavigationBarItem _buildItem(TabItem tabItem) {
    final itemData = TabItemData.allTabs[tabItem];
    final color = currentTab == tabItem ? AppColor.gscYellow : Colors.grey;
    return BottomNavigationBarItem(
      icon: getTabIcon(currentTab, tabItem),
      title: Text(
        itemData.title,
        style: TextStyle(color: color),
      ),
    );
  }

  Map<TabItem, SvgPicture> _tabImages = {
    TabItem.movies: AppIcons.movie,
    TabItem.cinemas: AppIcons.marker,
    TabItem.me: AppIcons.profile
  };

  Map<TabItem, SvgPicture> _tabSelectedImages = {
    TabItem.movies: AppIcons.movieFilled,
    TabItem.cinemas: AppIcons.markerFilled,
    TabItem.me: AppIcons.profileFilled,
  };
}
