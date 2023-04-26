import 'package:chortkeh/screens/dongHa/dong.dart';
import 'package:chortkeh/screens/freind_and_gruop/friendListScreen.dart';
import 'package:chortkeh/screens/mainHome.dart';
import 'package:chortkeh/screens/Profile/profile.dart';
import 'package:flutter/material.dart';
import 'screens/freind_and_gruop/groupListScreen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:chortkeh/constant/constant.dart';
class Home2 extends StatefulWidget {
  static String id = 'home2';

  @override
  _Home2State createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  final List<Widget> _screens = [
    MainHome(),
    Profile(),
    DongScreen(),
    FriendListWidget(),
    GroupListWidget(),
  ];

  late  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: Container(
        clipBehavior: Clip.hardEdge,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(12),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(
              Radius.circular(15)),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedFontSize: 20,
            showUnselectedLabels: false,
            selectedIconTheme: const IconThemeData(color: Colors.white70),
            selectedLabelStyle: kPrimaryTextStyle,
            currentIndex: _selectedIndex, //New
            onTap: _onItemTapped,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.black12,
            backgroundColor: kPrimaryColor.withOpacity(0.8),
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.house),
                label: 'خانه',
              ),
              BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.solidUser),
                label: 'پروفایل من',
              ),
              BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.circlePlus),
                label: 'دنگ دونی',
              ),
              BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.userGroup),
                // icon: FaIcon(FontAwesomeIcons.userGroup),
                label: 'دوستان من',
              ),

              BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.users),
                label: 'گروه های من',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
