import 'package:honalondon_radio/consts/const.dart';

import '../home/events_details_screen.dart';

class PresenterThreeScreen extends StatelessWidget {
  const PresenterThreeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const EventsDetailsScreen(
      bgImg: p3bImag,
      profileImg: p3pImag,
      fname: '''اسم البرنامج
      كلام من القلب 
      مدة البرنامج ساعة''',
      desc: '''مدة البرنامج ساعة. 
فكرة البرنامج يتناول مناقشة القضايا الاجتماعية التى تهم المواطن في كل مكان على وجه الارض مع ايجاد حلول لها من خلال ضيوف مختصين فى الطب النفسي وعلم الاجتماع وعلم النفس ،، مع السماح للجمهور بالمشاركة في النقاش وعرض مشاكلهم الاجتماعية من خلال المداخلات الهاتفية أو رسائل على صفحة البرنامج أو رقم واتس أب خاص بالبرنامج  ..''',
    );
  }
}
