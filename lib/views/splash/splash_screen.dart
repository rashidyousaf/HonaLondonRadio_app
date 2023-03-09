import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:honalondon_radio/consts/const.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  changeScreen() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushNamedAndRemoveUntil(
          context, "/bottomNavScreen", (Route<dynamic> route) => false);
    });
  }

  @override
  void initState() {
    changeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 279.h),
            SizedBox(
                width: 388.w,
                height: 311.h,
                child: Image.asset(
                  icappLogo,
                  fit: BoxFit.fill,
                )),
            SizedBox(
              height: 100.h,
            ),
            SizedBox(
              width: 40.w,
              height: 40.h,
              child: const CircularProgressIndicator(
                color: nBlueColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
