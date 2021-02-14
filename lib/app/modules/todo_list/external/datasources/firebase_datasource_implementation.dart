import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../infrastructure/datasources/firebase_datasource.dart';
import '../models/todo_item_model.dart';

part 'firebase_datasource_implementation.g.dart';

@Injectable()
class FirebaseDataSourceImplementation implements FirebaseDataSource {
  final Firestore firestore;

  FirebaseDataSourceImplementation(this.firestore);

  @override
  Future<void> addNewItemToCollection({
    String description,
    bool value,
    String collectionName,
  }) async {
    final newItem = TodoItemModel(description: description, value: value);

    await firestore.collection(collectionName).add(newItem.toMap());
  }

  @override
  Future<void> toggleItemValueInCollection(
      {String description, bool value, String collectionName}) async {
    final item = TodoItemModel(description: description, value: value);

    final snapshot = await firestore
        .collection(collectionName)
        .where('description', isEqualTo: description)
        .getDocuments();

    final documentID = snapshot.documents.first.documentID;

    await firestore
        .collection(collectionName)
        .document(documentID)
        .updateData(item.toMap());
  }

  @override
  Future<void> deleteItemFromCollection(
      {String description, String collectionName}) async {
    final snapshot = await firestore
        .collection(collectionName)
        .where('description', isEqualTo: description)
        .getDocuments();

    final documentID = snapshot.documents.first.documentID;

    await firestore.collection(collectionName).document(documentID).delete();
  }
}
