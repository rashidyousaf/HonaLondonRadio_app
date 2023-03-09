import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:honalondon_radio/common_widgets/custom_button.dart';
import 'package:honalondon_radio/consts/const.dart';

class CoinScreen1 extends StatelessWidget {
  const CoinScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              SizedBox(
                height: 32.h,
              ),

              // this section for back arrow
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: SizedBox(
                      width: 30.w,
                      height: 30.h,
                      child: Icon(
                        Icons.arrow_back,
                        size: 30.sp,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 153.w,
                  ),
                  Text(
                    coins,
                    style: myTS20(textColor: black2Color),
                  )
                ],
              ),
              SizedBox(
                height: 38.h,
              ),
              Row(
                children: [
                  Image.asset(
                    iccoin,
                    width: 60.w,
                    height: 60.h,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Column(
                    children: [
                      Text(
                        coins,
                        style: myTS20(textColor: black2Color),
                      ),
                      Text(
                        coins,
                        style: myTS20(textColor: black2Color, fontSize: 12.sp),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      Text(
                        price,
                        style: myTS20(
                          textColor: black2Color,
                          fontSize: 14.sp,
                        ),
                      ),
                      Text(
                        '\$$pr',
                        style: myTS20(
                            textColor: black2Color,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 53.h,
              ),
              Container(
                width: 393.w,
                height: 168.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.r),
                  border: Border.all(
                    color: lGColor,
                    width: 3.w,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      '5.2354',
                      style:
                          myTS20(fontSize: 45.sp, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Text(
                      "$youWillbe 7.04",
                      style: myTS20(
                        fontSize: 14.sp,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 23.h,
              ),
              Text(
                '$availableCoins 46.2354',
                style: myTS20(
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(
                height: 140.h,
              ),
              CustomButton(
                onTap: () {
                  Navigator.pushNamed(context, '/coins2');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
