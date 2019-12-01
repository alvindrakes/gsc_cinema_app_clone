import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gsc_cinema/res/app_color.dart';
import 'package:gsc_cinema/res/app_text.dart';
import 'package:gsc_cinema/ui/components/custom_navigation_bar.dart';
import 'package:gsc_cinema/ui/components/custom_tab_bar.dart';
import 'package:gsc_cinema/utils/device_screen.dart';

class CinemasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomNavigationBar(
        title: 'Cinemas',
        showSearch: true,
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          _buildCinemaLocation(),
          CustomTabBar(
            isCinema: false,
          ),
        ],
      ),
    );
  }

  Widget _buildCinemaLocation() {
    return SliverToBoxAdapter(
      child: Container(
        height: DeviceScreen.height * 0.35,
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Nearest to you',
              style: AppText.kDescription.copyWith(color: AppColor.textGray),
            ),
            Container(
              // color: Colors.red,
              width: double.infinity,
              height: DeviceScreen.height * 0.25,
              child: Center(
                child: Text(
                  'No cinema nearby.',
                  style: AppText.kDescription.copyWith(
                    color: AppColor.textGray,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
