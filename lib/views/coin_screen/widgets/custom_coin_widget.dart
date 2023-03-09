import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../consts/const.dart';

class CustomCoinWidget extends StatelessWidget {
  const CustomCoinWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 147.h,
      child: Column(
        children: [
          // first Row
          Row(
            children: [
              SizedBox(
                width: 16.w,
              ),
              Text(
                buycoins,
                style: myTS20(fontSize: 20.sp),
              ),
              const Spacer(),
              Text(
                completed,
                style: myTS20(textColor: lGColor, fontSize: 20.sp),
              ),
              SizedBox(
                width: 19.w,
              ),
            ],
          ),
          SizedBox(
            height: 15.h,
          ),
          // second row
          Row(
            children: [
              SizedBox(
                width: 16.w,
              ),
              Text(
                marketOrder,
                style: myTS20(fontSize: 12.sp, textColor: black2Color),
              ),
              const Spacer(),
              Text(
                '07:12  / 12/01/2023',
                style: myTS20(textColor: black2Color, fontSize: 12.sp),
              ),
              SizedBox(
                width: 10.w,
              ),
            ],
          ),
          // this third row
          SizedBox(
            height: 15.h,
          ),

          Row(
            children: [
              SizedBox(
                width: 16.w,
              ),
              Text(
                price,
                style: myTS20(fontSize: 12.sp, textColor: black2Color),
              ),
              SizedBox(
                width: 138.w,
              ),
              Text(
                amount,
                style: myTS20(fontSize: 12.sp, textColor: black2Color),
              ),
              const Spacer(),
              Text(
                total,
                style: myTS20(textColor: black2Color, fontSize: 12.sp),
              ),
              SizedBox(
                width: 40.w,
              ),
            ],
          ),
          // this forth row
          SizedBox(
            height: 15.h,
          ),

          Row(
            children: [
              SizedBox(
                width: 16.w,
              ),
              SizedBox(
                width: 100.w,
                child: Text(
                  '1.203',
                  style: myTS20(
                    fontSize: 16.sp,
                  ),
                ),
              ),
              SizedBox(
                width: 35.w,
              ),
              SizedBox(
                width: 100.w,
                child: Text(
                  '25',
                  textAlign: TextAlign.center,
                  style: myTS20(
                    fontSize: 16.sp,
                  ),
                ),
              ),
              const Spacer(),
              SizedBox(
                width: 100.w,
                child: Text(
                  '28',
                  textAlign: TextAlign.center,
                  style: myTS20(fontSize: 16.sp),
                ),
              ),
              SizedBox(
                width: 5.w,
              ),
            ],
          ),
          SizedBox(
            height: 13.h,
          ),
          Divider(
            endIndent: 19.w,
            indent: 19.w,
            thickness: 1.sp,
          )
        ],
      ),
    );
  }
}
