import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gsc_cinema/res/app_color.dart';
import 'package:gsc_cinema/res/app_text.dart';
import 'package:gsc_cinema/utils/data.dart';
import 'package:gsc_cinema/utils/device_screen.dart';

class EditProfilePage extends StatelessWidget {
  Widget _buildUpperPart() {
    return Container(
      padding: const EdgeInsets.all(50.0),
      child: Column(
        children: <Widget>[
          CircularProfileAvatar(
            Data.profilePhoto,
            radius: 30,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Alvin',
            style: AppText.kTitle,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            '+60115556666',
            style: AppText.knumber,
          ),
        ],
      ),
    );
  }

  Widget _buildLowerPart() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: "Name",
              labelStyle: TextStyle(color: AppColor.lightGray),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColor.lightGray),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColor.gscYellow),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: "Mobile No.",
              labelStyle: TextStyle(color: AppColor.lightGray),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColor.lightGray),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColor.gscYellow),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: "Email",
              labelStyle: TextStyle(color: AppColor.lightGray),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColor.lightGray),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColor.gscYellow),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: <Widget>[
              Text(
                'Change Password',
                style: AppText.kDescription
                    .copyWith(fontWeight: FontWeight.normal),
              ),
              Icon(
                Icons.keyboard_arrow_right,
                color: Colors.white,
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            child: CupertinoButton(
              pressedOpacity: 0.6,
              onPressed: () {},
              color: AppColor.gscYellow,
              child: Text(
                'Save Changes',
                style: AppText.kDescription.copyWith(
                    color: Colors.black, fontWeight: FontWeight.normal),
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        actionsForegroundColor: Colors.white,
        middle: Text(
          'Edit profile',
          style: AppText.kTitle,
        ),
      ),
      body: ListView(
        children: <Widget>[
          _buildUpperPart(),
          _buildLowerPart(),
        ],
      ),
    );
  }
}
