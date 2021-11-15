import 'package:firebase_database/firebase_database.dart';
import 'package:fooddelevery/data.dart';

final databaseReference = FirebaseDatabase.instance.reference();

DatabaseReference savePost( Category category) {
  var id = databaseReference.child('categories/').push();
  id.set(category.toJson());
  return id;
}



void updatePost(Category category, DatabaseReference id) {
  id.update(category.toJson());
}

Future<List<Category>> getAllCategory() async {
  DataSnapshot dataSnapshot = await databaseReference.child('categories/').once();
  List<Category> categories = [];
  if (dataSnapshot.value != null) {
    dataSnapshot.value.forEach((key, value) {
      Category category = createCategory(value);
      category.setId(databaseReference.child('categories/' + key));
      categories.add(category);
    });
  }
  return categories;
}