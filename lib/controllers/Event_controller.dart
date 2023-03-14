import 'package:honalondon_radio/consts/const.dart';
import 'package:honalondon_radio/models/event_model.dart';
import 'package:honalondon_radio/services/firestore_service.dart';

import 'Image_picker_provider.dart';

class EventController {
  TextEditingController bgimageController = TextEditingController();
  TextEditingController proimageController = TextEditingController();
  TextEditingController titleController = TextEditingController();
  TextEditingController descController = TextEditingController();

  FirestoreService firestoreService = FirestoreService();

  saveEvents() async {
    EventModel eventModel = EventModel(
      bgImage: bgimageController.text,
      proImage: proimageController.text,
      title: titleController.text,
      desc: descController.text,
    );
    await firestoreService.saveEventsInfo(eventModel);
  }

  demyFuc() {
    ImagePcikerProvider iPP = ImagePcikerProvider();

    print("url:${iPP.imageUrl}");
  }
}
