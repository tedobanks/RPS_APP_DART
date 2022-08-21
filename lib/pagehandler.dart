import 'package:flutter/material.dart';
import 'package:new_app/homepage.dart';
import 'package:new_app/profile.dart';

class PageHandler extends StatefulWidget {
  const PageHandler({Key? key}) : super(key: key);

  @override
  State<PageHandler> createState() => _PageHandlerState();
}

class _PageHandlerState extends State<PageHandler> {
  final screens = [const HomePage(), const ProfilePage()];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: NavigationBarTheme(
          data: NavigationBarThemeData(
            indicatorColor: Theme.of(context).primaryColorLight,
            labelTextStyle: MaterialStateProperty.all(
                const TextStyle(fontFamily: 'Raleway-Bold')),
          ),
          child: NavigationBar(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            selectedIndex: index,
            onDestinationSelected: (specificIndex) {
              setState(() {
                index = specificIndex;
              });
            },
            destinations: const [
              NavigationDestination(
                icon: Icon(Icons.gamepad),
                label: 'Play',
              ),
              NavigationDestination(icon: Icon(Icons.people), label: 'Profile')
            ],
          )),
    );
  }
}
