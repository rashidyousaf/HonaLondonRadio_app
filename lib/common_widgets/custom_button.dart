import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../consts/const.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.title = contine, this.onTap});

  final title;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 393,
      height: 67.h,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: nBlueColor,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Text(
          title,
          style: myTS20(textColor: wColor, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
