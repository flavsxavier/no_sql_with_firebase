abstract class FirebaseDataSource {
  Future<void> addNewItemToCollection({
    String description,
    bool value,
    String collectionName,
  });
}
