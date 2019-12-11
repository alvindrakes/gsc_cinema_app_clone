import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gsc_cinema/res/app_color.dart';
import 'package:gsc_cinema/res/app_text.dart';
import 'package:gsc_cinema/ui/components/custom_navigation_bar.dart';
import 'package:gsc_cinema/utils/data.dart';
import 'package:gsc_cinema/utils/device_screen.dart';

class EditProfilePage extends StatelessWidget {
  Widget _buildUpperPart() {
    return Container(
      padding: const EdgeInsets.all(50.0),
      child: Column(
        children: <Widget>[
          CircleAvatar(
            backgroundColor: Colors.white,
            backgroundImage: NetworkImage(
              Data.profilePhoto,
            ),
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
            style: TextStyle(color: Colors.white),
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: "Name",
              labelStyle: TextStyle(color: AppColor.textGray),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColor.textGray),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColor.gscYellow),
              ),
            ),
            initialValue: 'Alvin',
          ),
          SizedBox(
            height: 15,
          ),
          TextFormField(
            style: TextStyle(color: Colors.white),
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: "Mobile No.",
              labelStyle: TextStyle(color: AppColor.textGray),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColor.textGray),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColor.gscYellow),
              ),
            ),
            initialValue: '012-8888777',
          ),
          SizedBox(
            height: 15,
          ),
          TextFormField(
            style: TextStyle(color: Colors.white),
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: "Email",
              labelStyle: TextStyle(color: AppColor.textGray),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColor.textGray),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColor.gscYellow),
              ),
            ),
            initialValue: 'Alvin@gmail.com',
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
          automaticallyImplyMiddle: true,
          actionsForegroundColor: Colors.white,
          backgroundColor: Colors.black.withOpacity(0.4),
          middle: Text(
            'Edit profile',
            style: TextStyle(color: Colors.white, letterSpacing: 1.0),
          ),
        ),
        body: ListView(
          children: <Widget>[
            _buildUpperPart(),
            _buildLowerPart(),
          ],
        ));
  }
}
