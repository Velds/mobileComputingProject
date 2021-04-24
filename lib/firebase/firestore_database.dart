import 'dart:async';

import 'package:firestore_service/firestore_service.dart';
import 'package:starter_architecture_flutter_firebase/app/home/models/item.dart';
import 'package:starter_architecture_flutter_firebase/firebase/firestore_path.dart';

String documentIdFromCurrentDate() => DateTime.now().toIso8601String();

class FirestoreDatabase {
  FirestoreDatabase({required this.uid});
  final String uid;

  final _service = FirestoreService.instance;

  String getUID() => uid;

  // List<Brew> _brewListFromSnapshot(QuerySnapshot snapshot) {
  //   return snapshot.documents.map((doc) {
  //     //print(doc.data);
  //     return Brew(
  //         name: doc.data['name'] ?? '',
  //         strength: doc.data['strength'] ?? 0,
  //         sugars: doc.data['sugars'] ?? '0');
  //   }).toList();
  // }
  Future<void> setItem(Item item) => _service.setData(
        path: FirestorePath.item(uid, item.id),
        data: item.toMap(uid),
      );

  Future<void> setSold(Item item) => _service.setData(
      path: FirestorePath.categories(item.category, item.id),
      data: item.toMap(uid));

  Stream<List<Item>> itemsSoldStream(String? category) =>
      _service.collectionStream(
        path: FirestorePath.searchCategory(category),
        builder: (data, documentId) => Item.fromMap(data, documentId),
      );

  Stream<List<Item>> historyStream() => _service.collectionStream(
        path: FirestorePath.history(),
        builder: (data, documentId) => Item.fromMap(data, documentId),
      );

  Stream<Item> itemStream({required String itemId}) => _service.documentStream(
        path: FirestorePath.item(uid, itemId),
        builder: (data, documentId) => Item.fromMap(data, documentId),
      );

  Stream<List<Item>> itemsStream() => _service.collectionStream(
        path: FirestorePath.items(uid),
        builder: (data, documentId) => Item.fromMap(data, documentId),
      );
}
