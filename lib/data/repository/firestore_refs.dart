import 'package:cloud_firestore/cloud_firestore.dart';

extension FirebaseFirestoreX on FirebaseFirestore {
  CollectionReference<Map<String, dynamic>> usersRef() => collection('users');
  CollectionReference<Map<String, dynamic>> postsRef() => collection('posts');
  CollectionReference<Map<String, dynamic>> correctionsRef() =>
      collection('corrections');
  CollectionReference<Map<String, dynamic>> correctionMessagesRef(
          String correctionId) =>
      collection('corrections').doc(correctionId).collection('messages');
  CollectionReference<Map<String, dynamic>> questionsRef() =>
      collection('questions');
  CollectionReference<Map<String, dynamic>> questionMessagesRef(
          String questionId) =>
      collection('questions').doc(questionId).collection('messages');
}
