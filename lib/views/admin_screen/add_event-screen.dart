import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:honalondon_radio/common_widgets/custom_button.dart';
import 'package:honalondon_radio/common_widgets/custom_textfield.dart';
import 'package:honalondon_radio/consts/const.dart';
import 'package:honalondon_radio/controllers/Event_controller.dart';
import 'package:provider/provider.dart';

import '../../controllers/Image_picker_provider.dart';

class AddEventScreen extends StatelessWidget {
  const AddEventScreen({super.key});

  @override
  Widget build(BuildContext context) {
    EventController eC = EventController();
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: 30.h,
          ),
          Text(
            "Add Events",
            style: myTS20(fontSize: 20.sp),
          ),
          SizedBox(
            height: 20.h,
          ),
          Consumer<ImagePcikerProvider>(builder: (context, provider, child) {
            return InkWell(
              onTap: () {
                provider.pickbgImage();
              },
              child: Container(
                  width: 100.w,
                  height: 100.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: greyColor),
                  child: provider.pimg == null
                      ? const Center(
                          child: Text(
                          'Background image',
                          textAlign: TextAlign.center,
                        ))
                      : const CircleAvatar(
                          // backgroundImage: FileImage(provider.bgimg!),
                          )),
            );
          }),
          SizedBox(
            height: 10.h,
          ),
          Consumer<ImagePcikerProvider>(builder: (context, provider, child) {
            return InkWell(
              onTap: () {
                provider.pickpImage1();
              },
              child: Container(
                  clipBehavior: Clip.antiAlias,
                  width: 100.w,
                  height: 100.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100.r),
                      color: greyColor),
                  child: provider.pimg == null
                      ? const Center(child: Text('Profile image'))
                      : CircleAvatar(
                          backgroundImage: FileImage(provider.pimg!),
                          radius: 200.0,
                        )),
            );
          }),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: CustomTextfiled(
              titile: title,
              hint: '',
              controller: eC.titleController,
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: CustomTextfiled(
              titile: description,
              hint: '',
              controller: eC.descController,
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          SizedBox(
            height: 60.h,
            child: CustomButton(
              title: "Submit",
              onTap: () {
                eC.demyFuc();
              },
            ),
          ),
        ],
      )),
    );
  }
}
