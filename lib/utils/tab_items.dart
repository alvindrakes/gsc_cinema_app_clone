import 'package:flutter/material.dart';

enum TabItem { movies, cinemas, me }

class TabItemData {
  const TabItemData({@required this.title, @required this.icon});

  final String title;
  final IconData icon;

  static const Map<TabItem, TabItemData> allTabs = {
    TabItem.movies: TabItemData(title: 'Movies', icon: Icons.work),
    TabItem.cinemas: TabItemData(title: 'Cinemas', icon: Icons.view_headline),
    TabItem.me: TabItemData(title: 'Me', icon: Icons.person),
  };
}
