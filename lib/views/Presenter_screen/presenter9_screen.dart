import 'package:honalondon_radio/consts/const.dart';

import '../home/events_details_screen.dart';

class Presenter9Screen extends StatelessWidget {
  const Presenter9Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return const EventsDetailsScreen(
      bgImg: p2bImag,
      profileImg: p8pImag,
      fname: '''اسم البرنامج: عالم الرأي. 
''',
      desc:
          '''برنامج عالم الرأي هو برنامج تفاعلي  يهتم بكل التطورات الحاصلة على المستوى الدولي والعربي خاصة، ويفتح البرنامج  المجال لمتابعي  راديو" هنا لندن" للتفاعل  وتبادل الاراء والتحاليل    بخصوص المواضيع المختارة والتي تكون قد صنعت الحدث  واثارت اهتمام الراي العام عموما. 
توقيت البرنامج: 52د 
ايام  البث : السبت والأحد. 
توقيت البث: 21h:00 بتوقيت لندن.''',
    );
  }
}
