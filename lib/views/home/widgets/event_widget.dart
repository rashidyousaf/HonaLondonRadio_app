import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:honalondon_radio/consts/const.dart';

class EventWidget extends StatelessWidget {
  const EventWidget(
      {super.key, required this.onTap, this.img, this.tit = '', this.dec = ''});
  final VoidCallback? onTap;
  final String? img;
  final String? tit;
  final String? dec;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 10.h),
      width: 394.w,
      height: 201.h,
      decoration: BoxDecoration(
          color: lGreyColor, borderRadius: BorderRadius.circular(30.r)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            width: 10.w,
          ),
          Container(
            width: 154.w,
            height: 179.h,
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(30.r)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30.r),
              child: Image.asset(
                img!,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 11.w,
          ),
          Column(
            children: [
              SizedBox(
                height: 22.h,
              ),
              Text(
                title,
                style: myTS20(fontSize: 20.sp),
              ),
              SizedBox(
                height: 7.h,
              ),
              Text(
                tit!,
                style: myTS20(fontSize: 16.sp),
              ),
              SizedBox(
                height: 7.h,
              ),
              Text(
                description,
                style: myTS20(fontSize: 20.sp),
              ),
              Text(
                dec!,
                textAlign: TextAlign.center,
                style: myTS20(fontSize: 16.sp),
              ),
            ],
          ),
          SizedBox(
            width: 15.w,
          ),
          GestureDetector(
            onTap: onTap,
            child: Container(
              alignment: Alignment.center,
              width: 80.w,
              height: 38.h,
              decoration: BoxDecoration(
                  color: nBlueColor, borderRadius: BorderRadius.circular(30.r)),
              child: Text(
                view,
                style: myTS20(textColor: wColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
