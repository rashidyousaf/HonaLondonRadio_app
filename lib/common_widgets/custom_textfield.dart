import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../consts/const.dart';

class CustomTextfiled extends StatelessWidget {
  const CustomTextfiled({super.key, required this.titile, required this.hint});

  final String titile;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titile,
          style: myTS20(
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              textColor: nBlueColor),
        ),
        SizedBox(
          height: 10.h,
        ),
        TextField(
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1.w, color: nBlueColor),
              borderRadius: BorderRadius.circular(10.r),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1.w, color: nBlueColor),
              borderRadius: BorderRadius.circular(10.r),
            ),
            // labelText: 'User Name',
            // labelStyle: myTS20(fontSize: 18.sp, textColor: nBlueColor),
            hintText: hint,
            hintStyle: myTS20(fontSize: 14.sp, textColor: nBlueColor),
          ),
        ),
      ],
    );
  }
}
