import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:honalondon_radio/consts/const.dart';
import 'package:honalondon_radio/views/coin_screen/widgets/custom_coin_widget.dart';

class CoinScreen extends StatefulWidget {
  const CoinScreen({super.key});

  @override
  State<CoinScreen> createState() => _CoinScreenState();
}

class _CoinScreenState extends State<CoinScreen> {
  //

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: 33.h,
          ),
          Center(
            child: Text(
              coins,
              style: myTS20(fontSize: 20.sp),
            ),
          ),
          SizedBox(
            height: 33.h,
          ),
          Container(
            padding: EdgeInsets.only(top: 32.h, left: 21.w, right: 19.w),
            width: 393.w,
            height: 266.h,
            decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.topRight,
                  colors: [
                    Color(0xFF18C9CD),
                    Color(0xFF6A2896),
                  ],
                ),
                borderRadius: BorderRadius.circular(30.r)),
            child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    estiCoins,
                    style: myTS20(textColor: wColor, fontSize: 20.sp),
                  ),
                  SizedBox(
                    height: 23.h,
                  ),
                  Text(
                    '12.2356',
                    style: myTS20(
                        textColor: wColor,
                        fontSize: 45.sp,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 54.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/coins1');
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: 121.w,
                          height: 37.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            color: nBlueColor,
                            border: Border.all(
                                color: wColor, // Set border color
                                width: 3.0),
                          ),
                          child: Center(
                            child: Text(
                              buyCoins,
                              style: myTS20(textColor: wColor, fontSize: 16.sp),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 25.h,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const CustomCoinWidget(),
                  SizedBox(
                    height: 10.h,
                  ),
                  const CustomCoinWidget(),
                  SizedBox(
                    height: 10.h,
                  ),
                  const CustomCoinWidget(),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
