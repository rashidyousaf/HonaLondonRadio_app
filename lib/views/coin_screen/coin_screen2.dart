import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:honalondon_radio/common_widgets/custom_button.dart';
import 'package:honalondon_radio/consts/const.dart';

class CoinScreen2 extends StatelessWidget {
  const CoinScreen2({super.key});

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
                ],
              ),
              SizedBox(
                height: 38.h,
              ),
              Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
                Text(
                  confirmPin,
                  style: myTS20(fontWeight: FontWeight.w700),
                ),
                Image.asset(
                  iclock,
                  width: 25.w,
                  height: 25.h,
                ),
              ]),
              SizedBox(
                height: 26.h,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  width: 294.w,
                  child: Text(
                    enterYourSecurity,
                    style: myTS20(fontSize: 16.sp),
                  ),
                ),
              ),

              SizedBox(
                height: 130.h,
              ),
              Row(
                children: [
                  Container(
                    width: 72.w,
                    height: 57.h,
                    decoration: BoxDecoration(
                        color: const Color(0xffF0F0F0),
                        borderRadius: BorderRadius.circular(10.r)),
                  ),
                  SizedBox(
                    width: 32.w,
                  ),
                  Container(
                    width: 72.w,
                    height: 57.h,
                    decoration: BoxDecoration(
                        color: const Color(0xffF0F0F0),
                        borderRadius: BorderRadius.circular(10.r)),
                  ),
                  SizedBox(
                    width: 32.w,
                  ),
                  Container(
                    padding: EdgeInsets.all(20.h),
                    width: 72.w,
                    height: 57.h,
                    decoration: BoxDecoration(
                        color: const Color(0xffF0F0F0),
                        borderRadius: BorderRadius.circular(10.r)),
                    child: const Center(
                      child: TextField(),
                    ),
                  ),
                  SizedBox(
                    width: 32.w,
                  ),
                  Container(
                    width: 72.w,
                    height: 57.h,
                    decoration: BoxDecoration(
                        color: const Color(0xffF0F0F0),
                        borderRadius: BorderRadius.circular(10.r)),
                  ),
                ],
              ),
              SizedBox(
                height: 121.h,
              ),
              CustomButton(
                onTap: () {
                  Navigator.pushNamed(context, '/coins3');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
