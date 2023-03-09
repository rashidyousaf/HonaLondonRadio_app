import 'package:honalondon_radio/consts/const.dart';

import '../home/events_details_screen.dart';

class PresenterSexScreen extends StatelessWidget {
  const PresenterSexScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const EventsDetailsScreen(
      bgImg: icbgImage,
      profileImg: icappLogo,
      fname: 'فتاوى استثمارية',
      desc: descriptiondetails,
    );
  }
}
