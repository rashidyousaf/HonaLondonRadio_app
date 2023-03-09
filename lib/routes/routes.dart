import 'package:flutter/material.dart';
import 'package:honalondon_radio/views/Presenter_screen/presenter7_screen.dart';
import 'package:honalondon_radio/views/Presenter_screen/presenter8_screen.dart';
import 'package:honalondon_radio/views/Presenter_screen/presenter9_screen.dart';
import 'package:honalondon_radio/views/Presenter_screen/presenter_five_screen.dart';
import 'package:honalondon_radio/views/Presenter_screen/presenter_four_screen.dart';
import 'package:honalondon_radio/views/Presenter_screen/presenter_one_screen.dart';
import 'package:honalondon_radio/views/Presenter_screen/presenter_sex_screen.dart';
import 'package:honalondon_radio/views/Presenter_screen/presenter_three_screen.dart';
import 'package:honalondon_radio/views/Presenter_screen/presenter_two_screen.dart';
import 'package:honalondon_radio/views/coin_screen/coin_screen1.dart';
import 'package:honalondon_radio/views/home/events_screen.dart';
import 'package:honalondon_radio/views/home/home_screen.dart';
import 'package:honalondon_radio/views/splash/splash_screen.dart';

import '../views/bottom_nav/bottom_nav_screen.dart';
import '../views/coin_screen/coin_screen2.dart';
import '../views/coin_screen/coin_screen3.dart';

class Routes {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case "/homescreen":
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      case "/bottomNavScreen":
        return MaterialPageRoute(builder: (context) => const BottomNavScreen());
      case "/eS":
        return MaterialPageRoute(builder: (context) => const EventsScreen());
      case "/pone":
        return MaterialPageRoute(
            builder: (context) => const PresenterOneScreen());
      case "/ptwo":
        return MaterialPageRoute(
            builder: (context) => const PresenterTwoScreen());
      case "/pthree":
        return MaterialPageRoute(
            builder: (context) => const PresenterThreeScreen());
      case "/pfour":
        return MaterialPageRoute(
            builder: (context) => const PresenterFourScreen());
      case "/pfive":
        return MaterialPageRoute(
            builder: (context) => const PresenterFiveScreen());
      case "/psex":
        return MaterialPageRoute(
            builder: (context) => const PresenterSexScreen());
      case "/p7":
        return MaterialPageRoute(
            builder: (context) => const Presenter7Screen());
      case "/p8":
        return MaterialPageRoute(
            builder: (context) => const Presenter8Screen());
      case "/p9":
        return MaterialPageRoute(
            builder: (context) => const Presenter9Screen());
      case "/coins1":
        return MaterialPageRoute(builder: (context) => const CoinScreen1());
      case "/coins2":
        return MaterialPageRoute(builder: (context) => const CoinScreen2());
      case "/coins3":
        return MaterialPageRoute(builder: (context) => const CoinScreen3());
    }
    return null;
  }
}
