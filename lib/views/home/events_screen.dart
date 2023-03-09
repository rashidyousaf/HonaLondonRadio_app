import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:honalondon_radio/consts/const.dart';
import 'package:honalondon_radio/views/home/widgets/event_widget.dart';

class EventsScreen extends StatelessWidget {
  const EventsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 38.h,
            ),
            Center(
              child: Text(
                events,
                style: myTS20(textColor: black2Color),
              ),
            ),
            SizedBox(
              height: 22.h,
            ),
            Expanded(
              flex: 1,
              child: SingleChildScrollView(
                child: Column(children: [
                  EventWidget(
                    img: p1pImag,
                    tit: 'فتاوى استثمارية',
                    dec: ' فتاوى استثمارية',
                    onTap: () {
                      Navigator.pushNamed(context, "/pone");
                    },
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  EventWidget(
                    dec: ' .الاستاذة في ',
                    img: p5pImag,
                    onTap: () {
                      Navigator.pushNamed(context, "/ptwo");
                    },
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  EventWidget(
                    tit: 'كلام من القلب',
                    dec: ' كلام من القلب',
                    img: p3pImag,
                    onTap: () {
                      Navigator.pushNamed(context, "/pthree");
                    },
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  EventWidget(
                    dec: '.إنتظروني',
                    img: p4pImag,
                    onTap: () {
                      Navigator.pushNamed(context, "/pfour");
                    },
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  EventWidget(
                    dec: '.نافذة على ليبيا',
                    img: p6pImag,
                    onTap: () {
                      Navigator.pushNamed(context, "/pfive");
                    },
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  EventWidget(
                    tit: 'أصدقائي و صديقاتي',
                    dec: '.التي نسعى',
                    img: p2pImag,
                    onTap: () {
                      Navigator.pushNamed(context, "/p7");
                    },
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  EventWidget(
                    dec: '.التي نسعى',
                    tit: '.أصدقائي',
                    img: p7pImag,
                    onTap: () {
                      Navigator.pushNamed(context, "/p8");
                    },
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  EventWidget(
                    tit: 'اسم البرنامج',
                    dec: '.برنامج عالم الرأي',
                    img: p8pImag,
                    onTap: () {
                      Navigator.pushNamed(context, "/p9");
                    },
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
