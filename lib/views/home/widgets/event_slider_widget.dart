import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../consts/const.dart';

class EventSliderWidget extends StatelessWidget {
  const EventSliderWidget({super.key, this.img, this.tit, this.tit1});

  final String? tit;
  final String? img;
  final String? tit1;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 304.w,
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(30.r),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 10.h,
          ),
          Container(
            width: 100.w,
            height: 100.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r), color: wColor),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.r),
              child: Image.asset(
                img!,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            tit1!,
            style: myTS20(fontSize: 14.sp),
          ),
        ],
      ),
    );
  }
}
