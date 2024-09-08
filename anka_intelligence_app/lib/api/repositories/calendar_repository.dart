import 'package:anka_intelligence_app/constant/format/collections.dart';
import 'package:anka_intelligence_app/models/classes_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CalendarRepository {
  Future<List<Classes>> getClasses() async {
    CollectionReference classesRef =
        FirebaseFirestore.instance.collection(Collections.classes);
    QuerySnapshot snapshot = await classesRef.get();

    return snapshot.docs
        .map((doc) => Classes.fromMap(doc.data() as Map<String, dynamic>))
        .toList();
  }
}
