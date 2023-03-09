import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:honalondon_radio/consts/const.dart';

class EventsDetailsScreen extends StatelessWidget {
  const EventsDetailsScreen({
    super.key,
    required this.bgImg,
    required this.profileImg,
    this.fname = '',
    this.desc = '',
  });
  final String bgImg;
  final String profileImg;
  final String? fname;
  final String desc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 32.h,
            ),

            // this section for back arrow
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
                  )),
            ),
            SizedBox(
              height: 36.h,
            ),
            // this section for bg and profile image
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: 393.w,
                  height: 206.h,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(50.r)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30.r),
                    child: Image.asset(
                      bgImg,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Positioned(
                  left: 129.w,
                  top: 130.h,
                  child: Container(
                    width: 134.w,
                    height: 134.h,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100.r)),
                    child: Image.asset(
                      profileImg,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 61.h,
            ),
            // this section for names
            SizedBox(
              width: double.maxFinite,
              child: Text(
                fname!,
                textAlign: TextAlign.end,
                style: myTS20(),
              ),
            ),

            // this section for calander and location
            SizedBox(
              width: 24.w,
              height: 24.h,
              child: Icon(
                Icons.calendar_month,
                color: greyColor,
                size: 30.sp,
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            SizedBox(
              width: 24.w,
              height: 23.h,
              child: Icon(
                Icons.location_on,
                color: Colors.red,
                size: 25.sp,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            // this section for desription
            Text(
              description,
              style: myTS20(),
            ),
            SizedBox(
              height: 20.h,
            ),
            Expanded(
              flex: 1,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Text(
                  desc,
                  textAlign: TextAlign.end,
                  style: myTS20(),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
