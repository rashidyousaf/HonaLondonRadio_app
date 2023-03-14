import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:honalondon_radio/views/admin_screen/add_event-screen.dart';
import 'package:honalondon_radio/views/admin_screen/admin_screen.dart';
import 'package:honalondon_radio/views/chat_screen/chat_screen.dart';
import 'package:honalondon_radio/views/coin_screen/coin_screen.dart';
import 'package:honalondon_radio/views/home/home_screen.dart';
import 'package:honalondon_radio/views/profile_screen/profile_screen.dart';

import 'package:provider/provider.dart';

import '../../consts/const.dart';
import '../../controllers/nav_provider.dart';

class BottomNavScreen extends StatelessWidget {
  const BottomNavScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mp = Provider.of<NavbarProvider>(context, listen: false);
    var navbarItem = [
      const BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: home,
      ),
      const BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.circleDollarToSlot), label: coin),
      const BottomNavigationBarItem(icon: Icon(Icons.chat), label: chat),
      const BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.user), label: profile),
      const BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.user), label: 'Admin'),
    ];
    //navbar body list
    var navBody = [
      const HomeScreen(),
      const CoinScreen(),
      const ChatScreen(),
      const ProfileScreen(),
      const AddEventScreen(),
    ];
    return Scaffold(
        body: Column(
          children: [
            Consumer<NavbarProvider>(builder: ((context, value, child) {
              return Expanded(
                child: navBody.elementAt(value.index),
              );
            }))
          ],
        ),
        bottomNavigationBar: Consumer<NavbarProvider>(
          builder: (context, value, child) {
            return SizedBox(
              height: 75.h,
              child: BottomNavigationBar(
                currentIndex: mp.index,
                type: BottomNavigationBarType.fixed,
                backgroundColor: wColor,
                selectedItemColor: nBlueColor,
                showUnselectedLabels: false,
                selectedLabelStyle:
                    TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500),
                items: navbarItem,
                onTap: (value1) {
                  value.updateIndex(value1);
                },
              ),
            );
          },
        ));
  }
}
