import 'package:cloud_firestore/cloud_firestore.dart';

class RequestService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<void> submitRequest(String reason, String dates) async {
    await _db.collection('holiday_requests').add({
      'reason': reason,
      'dates': dates,
      'approved': false,
    });
  }

  Future<List<Map<String, dynamic>>> getPendingRequests() async {
    final snapshot = await _db.collection('holiday_requests').where('approved', isEqualTo: false).get();
    return snapshot.docs.map((doc) => doc.data()).toList();
  }

  Future<void> approveRequest(String id) async {
    await _db.collection('holiday_requests').doc(id).update({'approved': true});
  }
}
