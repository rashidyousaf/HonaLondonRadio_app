import 'package:honalondon_radio/consts/const.dart';

import '../home/events_details_screen.dart';

class PresenterFiveScreen extends StatelessWidget {
  const PresenterFiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const EventsDetailsScreen(
      bgImg: p6bImag,
      profileImg: p6pImag,
      desc:
          '''"نافذة على ليبيا برنامج حواري سياسي يهتم بالشأن / الليبي العام والقضايا المهمة التي تشغل بال المواطن الليبي على الصعيد المحلي والاقليمي والدولي فالبرنامج هو عبارة عن نافذة حقيقية لليبين وتطل على العالم تنقل صوت الحقيقة وتقارب بين وجهات النظر بمهنية وحيادية... نافذة على ليبيا نهدف من خلالها التأثير والتغير عبر راديو (هنا لندن)''',
    );
  }
}
