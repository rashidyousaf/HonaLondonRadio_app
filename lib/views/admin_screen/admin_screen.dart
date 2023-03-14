import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:honalondon_radio/common_widgets/custom_button.dart';
import 'package:honalondon_radio/consts/const.dart';
import 'package:honalondon_radio/services/auth_service.dart';

import '../../common_widgets/custom_textfield.dart';

class AdminScreen extends StatelessWidget {
  const AdminScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AuthService authService = AuthService();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: 33.h,
          ),
          Center(
            child: Text(
              'Admin Area',
              style: myTS20(fontSize: 20.sp),
            ),
          ),
          SizedBox(
            height: 80.h,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20.w,
              right: 20.w,
            ),
            child: CustomTextfiled(
              controller: emailController,
              titile: 'Enter email',
              hint: 'Email',
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: 20.w, right: 20.w, top: 30.h, bottom: 30.h),
            child: CustomTextfiled(
              controller: passwordController,
              titile: 'Enter password',
              hint: 'Password',
            ),
          ),
          SizedBox(
            height: 60.h,
            child: CustomButton(
              title: "Login",
              onTap: () async {
                await authService.siginUser(
                    emailController.text, passwordController.text, context);
              },
            ),
          )
        ],
      )),
    );
  }
}
