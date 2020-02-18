import 'package:flutter/material.dart';
import 'profilecustomizations.dart';

class UserProfile extends StatefulWidget {
  UserProfile({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    final editButton = Material(
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
                builder: (context) => ProfileCustomizationsPage(
                  title: 'Edit',
                )),
          );
        },
        child: Text(
          "Edit",
          textAlign: TextAlign.center,
          style:
          style.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
        ),
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
                  SizedBox(
                    height: 50.0,
                    child: Image.asset(
                      "assets/music.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                  Text(
                    'Profile Picture',
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  RichText(
                    textAlign: TextAlign.center,
                    textScaleFactor: .75,
                    text: TextSpan(
                        style: DefaultTextStyle.of(context).style,
                        children: <TextSpan>[
                          TextSpan(text: 'Username'),
                        ]),
                  ),
                  SizedBox(height: 50.0,),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Text('Music'),
                      ),
                      Expanded(
                        child: Text('Recs'),
                      ),
                      Expanded(
                        child: Text('Friends'),
                      ),
                      Expanded(
                        child: Text('Bio'),
                      )
                    ],
                  ),
                  SizedBox(height: 400.0,),
                  Row(
                    children: <Widget>[
                      editButton
                    ],
                  )
                ],
              )),
        ),
      ),
    );
  }
}
