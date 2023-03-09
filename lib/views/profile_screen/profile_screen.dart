import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:honalondon_radio/consts/const.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 31.h,
          ),
          Center(
            child: Column(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      width: 104.47.w,
                      height: 104.47.h,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                          color: greyColor,
                          borderRadius: BorderRadius.circular(100.r)),
                      child: Image.asset(
                        p1pImag,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      top: 60.h,
                      left: 80.w,
                      child: Container(
                        width: 34.32.w,
                        height: 34.32.h,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.15),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: const Offset(2, 1),
                              )
                            ],
                            color: wColor,
                            borderRadius: BorderRadius.circular(100.r)),
                        child: Center(
                          child: Image.asset(
                            icEdit,
                            height: 18.h,
                            width: 18.w,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 23.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 20.w,
                    ),
                    Text(
                      "Muhammad Huzaifa",
                      style: myTS20(
                          fontSize: 18.0.sp, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      width: 15.5.w,
                    ),
                    Image.asset(
                      icEdit,
                      width: 14.w,
                      height: 14.h,
                    )
                  ],
                ),
                SizedBox(
                  height: 7.h,
                ),
                Text(
                  'info@huzaifajee.com',
                  style: myTS20(fontSize: 12.sp, fontWeight: FontWeight.w400),
                )
              ],
            ),
          ),
          SizedBox(
            height: 68.h,
          ),
          // this portion for settings
          Padding(
            padding: EdgeInsets.only(left: 15.w),
            child: Text(
              settings,
              style: myTS20(fontSize: 18.sp, fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: 18.36.h,
          ),

          // this is a first container
          Container(
            width: double.maxFinite,
            height: 44.h,
            color: sCColor,
            child: Row(
              children: [
                SizedBox(
                  width: 18.w,
                ),
                Text(
                  primaryCity,
                  style: myTS20(fontSize: 12.sp, fontWeight: FontWeight.w400),
                ),
                const Spacer(),
                Text(
                  barcelona,
                  style: myTS20(fontSize: 12.sp, fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  width: 25.w,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 1.h,
          ),
          // this section for second container
          Container(
            width: double.maxFinite,
            height: 44.h,
            color: sCColor,
            child: Row(
              children: [
                SizedBox(
                  width: 18.w,
                ),
                Text(
                  compyevent,
                  style: myTS20(fontSize: 12.sp, fontWeight: FontWeight.w400),
                ),
                const Spacer(),
                CupertinoSwitch(
                    activeColor: nBlueColor,
                    thumbColor: wColor,
                    // trackColor: nBlueColor,
                    value: _value,
                    onChanged: (bool newValue) {
                      setState(() {
                        _value = newValue;
                      });
                    }),
                SizedBox(
                  width: 25.w,
                ),
              ],
            ),
          ),
          // this is third container
          SizedBox(
            height: 1.h,
          ),
          Container(
            width: double.maxFinite,
            height: 44.h,
            color: sCColor,
            child: Row(
              children: [
                SizedBox(
                  width: 18.w,
                ),
                Text(
                  managevents,
                  style: myTS20(fontSize: 12.sp, fontWeight: FontWeight.w400),
                ),
                const Spacer(),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 18.sp,
                ),
                SizedBox(
                  width: 15.w,
                ),
              ],
            ),
          ),
          // this is third container
          SizedBox(
            height: 1.h,
          ),
          Container(
            width: double.maxFinite,
            height: 44.h,
            color: sCColor,
            child: Row(
              children: [
                SizedBox(
                  width: 18.w,
                ),
                Text(
                  manageLog,
                  style: myTS20(fontSize: 12.sp, fontWeight: FontWeight.w400),
                ),
                const Spacer(),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 18.sp,
                ),
                SizedBox(
                  width: 15.w,
                ),
              ],
            ),
          ),
          // this is third container
          SizedBox(
            height: 1.h,
          ),
          Container(
            width: double.maxFinite,
            height: 44.h,
            color: sCColor,
            child: Row(
              children: [
                SizedBox(
                  width: 18.w,
                ),
                Text(
                  acountSetting,
                  style: myTS20(fontSize: 12.sp, fontWeight: FontWeight.w400),
                ),
                const Spacer(),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 18.sp,
                ),
                SizedBox(
                  width: 15.w,
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
