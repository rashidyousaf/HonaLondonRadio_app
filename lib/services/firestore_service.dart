import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:honalondon_radio/models/event_model.dart';

class FirestoreService {
  CollectionReference events = FirebaseFirestore.instance.collection("events");

  Future<void> saveEventsInfo(EventModel eventModel) async {
    final docData = events.doc();

    eventModel.id = docData.id;

    await docData.set(eventModel.toJson());
  }

  // Future<EventModel> getEventsInfo() async {
  //   QuerySnapshot doc = events.get();
  //   EventModel clubhModel =
  //       EventModel.fromJson(doc.data() as Map<String, dynamic>);
  //   return EventModel();
  // }
}
