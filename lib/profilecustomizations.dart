import 'package:flutter/material.dart';
import 'userprofile.dart';

class ProfileCustomizationsPage extends StatefulWidget {
  ProfileCustomizationsPage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _ProfileCustomizationsPageState createState() => _ProfileCustomizationsPageState();
}

class _ProfileCustomizationsPageState extends State<ProfileCustomizationsPage> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  Widget build(BuildContext context) {
    final acceptButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xff01A0C7),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.aspectRatio,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => UserProfile(
                  title: 'User Profile',
                )),
          );
        },
        child: Text(
          "Accept",
          textAlign: TextAlign.center,
          style:
          style.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
    final importButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xff01A0C7),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.aspectRatio,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
        },
        child: Text(
          "Import",
          textAlign: TextAlign.center,
          style:
          style.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
    final changePfpField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "New Profile Picture",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );
    final changeUsernameField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "New Username",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );
    final changeBioField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "NewBio",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
              padding: const EdgeInsets.all(50.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[

                  SizedBox(height: 100.0,),
                  changePfpField,
                  SizedBox(height: 10.0,),
                  Row(
                      children: <Widget>[
                        importButton
                      ],
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  changeUsernameField,
                  SizedBox(height: 10.0),
                  changeBioField,
                  SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    children: <Widget>[
                      acceptButton
                    ],
                  )
                ],
              )),
        ),
      ),
    );
  }
}
