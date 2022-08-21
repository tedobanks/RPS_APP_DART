import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        centerTitle: true,
        title: Text(
          'Profile',
          style: TextStyle(
              fontFamily: 'Raleway-Bold',
              color: Theme.of(context).primaryColorDark,
              fontSize: 28),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              child: Text(
                'Thanks for Downloading and Playing!🎉',
                style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 16,
                    color: Theme.of(context).primaryColorDark),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "About",
                      style: TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: 24,
                          color: Theme.of(context).primaryColorDark),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    child: Text(
                      'This game was created by Ted Bankong. A 17 year old Nigerian programmer💻 and youtuber to test his coding skills and just to know what it feels like to have an app on the Google Play Store. If you like this game please leave a review and feel free to look up my name on any social media. Thank you😎',
                      style: TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: 18,
                          color: Theme.of(context).primaryColorDark),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
