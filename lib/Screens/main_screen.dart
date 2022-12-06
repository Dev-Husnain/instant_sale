import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instant_sale/Screens/notifications.dart';
import 'package:instant_sale/Screens/profile_screen.dart';
import 'package:instant_sale/Screens/search_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int indexValue = 0;
  final screens = [
    const SearchScreen(),
    const NotificationsScreen(),
    const ProfileScreen(),
    const NotificationsScreen(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        child: PhysicalModel(
          color: Theme.of(context).scaffoldBackgroundColor,
          elevation: 5,
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(15.0), topLeft: Radius.circular(15.0)),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 60,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        indexValue = 0;
                      });
                    },
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.15,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(CupertinoIcons.search,
                                color: indexValue == 0
                                    ? Colors.blue
                                    : const Color(0xff8A8989),
                                size: MediaQuery.of(context).size.width * 0.07),
                            const SizedBox(height: 3.0),
                          ]),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        indexValue = 1;
                      });
                    },
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.15,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(CupertinoIcons.star,
                                color: indexValue == 1
                                    ? Colors.blue
                                    : const Color(0xff8A8989),
                                size: MediaQuery.of(context).size.width * 0.07),
                            const SizedBox(height: 3.0),
                          ]),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.15,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(CupertinoIcons.add_circled_solid,
                                color: Colors.blue,
                                size: MediaQuery.of(context).size.width * 0.13),
                            const SizedBox(height: 5.0),
                          ]),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        indexValue = 3;
                      });
                    },
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.15,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(CupertinoIcons.bell,
                                color: indexValue == 3
                                    ? Colors.blue
                                    : const Color(0xff8A8989),
                                size: MediaQuery.of(context).size.width * 0.07),
                            const SizedBox(height: 3.0),
                          ]),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        indexValue = 4;
                      });
                    },
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.15,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(CupertinoIcons.person,
                                color: indexValue == 4
                                    ? Colors.blue
                                    : const Color(0xff8A8989),
                                size: MediaQuery.of(context).size.width * 0.07),
                            const SizedBox(height: 3.0),
                          ]),
                    ),
                  ),
                ]),
          ),
        ),
      ),
      body: screens[indexValue],
    );
  }
}
