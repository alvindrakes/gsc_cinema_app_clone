import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gsc_cinema/res/app_color.dart';
import 'package:gsc_cinema/res/app_text.dart';
import 'package:gsc_cinema/ui/pages/edit_profile_page.dart';
import 'package:gsc_cinema/utils/data.dart';
import 'package:gsc_cinema/utils/routing_constants.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: Text(
          'Me',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: <Widget>[
          _buildProfileRow(context),
          _buildRow(title: 'My Tickets'),
          _buildRow(title: 'GSC Memberships'),
          _buildRow(title: 'GSC HLB Credit Card'),
          _buildRow(title: 'About Us', icon: Icons.keyboard_arrow_down),
          _buildRow(title: 'Log Out'),
          _buildRow(title: 'V 3.0.2'),
        ],
      ),
    );
  }
}

Widget _buildRow({@required String title, IconData icon}) {
  return Column(
    children: <Widget>[
      Container(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: AppText.kDescription,
            ),
            Expanded(
              child: Container(),
            ),
            icon != null
                ? Icon(
                    icon,
                    color: Colors.white,
                  )
                : Container(),
          ],
        ),
      ),
      Divider(
        color: Colors.grey,
        thickness: 1.0,
      ),
    ],
  );
}

Widget _buildProfileRow(BuildContext context) {
  return Container(
    color: Colors.transparent,
    height: 120,
    padding: const EdgeInsets.all(20.0),
    child: Row(
      children: <Widget>[
        CircularProfileAvatar(
          Data.profilePhoto,
          radius: 30,
          backgroundColor: Colors.white,
          borderWidth: 1,
          cacheImage: true,
        ),
        SizedBox(width: 20),
        Text(
          ' Alvin',
          style: AppText.kTitle,
        ),
        Expanded(
          child: Container(),
        ),
        GestureDetector(
          onTap: () => Navigator.push(
            context,
            CupertinoPageRoute(
              builder: (context) => EditProfilePage(),
            ),
          ),
          child: Icon(
            Icons.edit,
            color: Colors.white,
          ),
        ),
      ],
    ),
  );
}
