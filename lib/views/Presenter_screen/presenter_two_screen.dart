import 'package:honalondon_radio/consts/const.dart';

import '../home/events_details_screen.dart';

class PresenterTwoScreen extends StatelessWidget {
  const PresenterTwoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const EventsDetailsScreen(
      bgImg: p2bImag,
      profileImg: p5pImag,
      desc:
          'الاستاذة في فنون العمل الاذاعي ساميا الاطرش التي اتحفتنا علي مر السنين في اذاعة بي بي سي بالمقولة الشهيرة هنا لندن هيئة الاذاعة البريطانية',
    );
  }
}
