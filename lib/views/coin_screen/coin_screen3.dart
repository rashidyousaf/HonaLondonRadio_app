import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:honalondon_radio/common_widgets/custom_button.dart';
import 'package:honalondon_radio/consts/const.dart';

class CoinScreen3 extends StatelessWidget {
  const CoinScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // this section for back arrow

            SizedBox(
              height: 93.h,
            ),

            Image.asset(
              iccoin,
              width: 100.w,
              height: 100.h,
            ),
            SizedBox(
              width: 2.w,
            ),

            Text(
              coins,
              style: myTS20(fontSize: 36.sp),
            ),
            Text(
              usd,
              style: myTS20(fontSize: 18.sp),
            ),

            SizedBox(
              height: 23.h,
            ),
            Divider(
              thickness: 1.h,
              color: greyColor,
              endIndent: 19.w,
              indent: 19.w,
            ),
            SizedBox(
              height: 23.h,
            ),
            Text(
              successfull,
              style: myTS20(
                fontSize: 36.sp,
              ),
            ),
            SizedBox(
              height: 18.h,
            ),
            Image.asset(
              iccheck,
              width: 210.w,
              height: 210.h,
            ),
            SizedBox(
              height: 140.h,
            ),
            CustomButton(
              title: "OK",
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
