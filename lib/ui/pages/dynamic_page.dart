import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gsc_cinema/res/app_color.dart';
import 'package:gsc_cinema/res/app_text.dart';

class DynamicPage extends StatelessWidget {
  const DynamicPage({@required this.noContent});
  final bool noContent;

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.yellow,
      child: noContent
          ? Center(
              child: Text(
                'No favourites cinema',
                style: AppText.kDescription,
              ),
            )
          : _buildCinemaRow(),
    );
  }

  Widget _buildCinemaRow() {
    return Column(
      children: <Widget>[
        ListTile(
          leading: Icon(
            Icons.favorite_border,
            color: AppColor.gscYellow,
          ),
          trailing: Text(
            '188.7km',
            style: AppText.kDescription,
          ),
          title: Text(
            'Ipoh - Ipoh Parade mall',
            style: AppText.kDescription,
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.favorite_border,
            color: AppColor.gscYellow,
          ),
          title: Text(
            'Penang - Queensbay mall',
            style: AppText.kDescription,
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.favorite_border,
            color: AppColor.gscYellow,
          ),
          title: Text(
            'Penang - Gurney Plaza',
            style: AppText.kDescription,
          ),
        ),
      ],
    );
  }
}
