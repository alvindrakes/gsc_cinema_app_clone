import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gsc_cinema/res/app_color.dart';
import 'package:gsc_cinema/res/app_icons.dart';
import 'package:gsc_cinema/res/app_text.dart';
import 'package:gsc_cinema/ui/components/custom_navigation_bar.dart';
import 'package:gsc_cinema/ui/pages/edit_profile_page.dart';
import 'package:gsc_cinema/utils/data.dart';
import 'package:gsc_cinema/utils/routing_constants.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        automaticallyImplyMiddle: true,
        actionsForegroundColor: Colors.white,
        backgroundColor: Colors.black.withOpacity(0.4),
        middle: Text(
          'Me',
          style: TextStyle(color: Colors.white, letterSpacing: 1.0),
        ),
      ),
      body: ListView(
        children: <Widget>[
          _buildProfileRow(context),
          _buildRow(title: 'My Tickets'),
          _buildRow(title: 'GSC Memberships'),
          _buildRow(title: 'GSC HLB Credit Card'),
          _buildDropDown(
            title: 'About Us',
          ),
          _buildRow(title: 'Log Out'),
          _buildRow(title: 'V 3.0.2'),
        ],
      ),
    );
  }

  Widget _buildDropDown({@required String title}) {
    return GestureDetector(
      onTap: () {
        isClicked = !isClicked;
        setState(() {});
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            color: Colors.transparent,
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
                isClicked == true
                    ? Icon(
                        Icons.keyboard_arrow_up,
                        color: Colors.white,
                      )
                    : Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.white,
                      )
              ],
            ),
          ),
          isClicked ? _buildExtras() : Container(),
          Divider(
            color: Colors.grey,
            thickness: 1.0,
          ),
        ],
      ),
    );
  }

  Widget _buildRow({@required String title}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: AppText.kDescription,
          ),
        ),
        Divider(
          color: Colors.grey,
          thickness: 1.0,
        ),
      ],
    );
  }
}

Widget _buildExtras() {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 20.0,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 40.0, bottom: 20.0),
          child: Text(
            'Social Media',
            style: AppText.knumber,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 40.0, bottom: 20.0),
          child: Text(
            'GSC website',
            style: AppText.knumber,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 40.0, bottom: 20.0),
          child: Text(
            'Terms & Conditions',
            style: AppText.knumber,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 40.0, bottom: 20.0),
          child: Text(
            'Privacy Policy',
            style: AppText.knumber,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 40.0, bottom: 20.0),
          child: Text(
            'Contact Us',
            style: AppText.knumber,
          ),
        ),
      ],
    ),
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
          onTap: () => Navigator.of(context, rootNavigator: true).push(
            CupertinoPageRoute(
              builder: (
                context,
              ) =>
                  EditProfilePage(),
            ),
          ),
          child: AppIcons.edit,
        ),
      ],
    ),
  );
}
