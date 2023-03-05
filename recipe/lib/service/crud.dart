import 'package:cloud_firestore/cloud_firestore.dart';
import '../modals/response.dart';

final FirebaseFirestore _firestore = FirebaseFirestore.instance;
final CollectionReference _Collection = _firestore.collection('Employee');
class FirebaseCrud {
  static Future<Response> addRecipe({
    required String title,
    required String description,
    required String ingrediants,
  }) async {

    Response response = Response();
    DocumentReference documentReferencer =
        _Collection.doc();

    Map<String, dynamic> data = <String, dynamic>{
      "title": title,
      "description": description,
      "ingrediants" : ingrediants
    };

    var result = await documentReferencer
        .set(data)
        .whenComplete(() {
          response.code = 200;
          response.message = "Sucessfully added to the database";
        })
        .catchError((e) {
            response.code = 500;
            response.message = e;
        });

        return response;
  }

    static Stream<QuerySnapshot> readRecipes() {
    CollectionReference notesItemCollection =
        _Collection;

    return notesItemCollection.snapshots();
  }
static Future<Response> updateRecipe({
      required String title,
    required String description,
    required String ingrediants,
    required String docId,
  }) async {
    Response response = Response();
    DocumentReference documentReferencer =
        _Collection.doc(docId);

    Map<String, dynamic> data = <String, dynamic>{
         "title": title,
      "description": description,
      "ingrediants" : ingrediants
    };

    await documentReferencer
        .update(data)
        .whenComplete(() {
           response.code = 200;
          response.message = "Sucessfully updated the recipe";
        })
        .catchError((e) {
            response.code = 500;
            response.message = e;
        });

        return response;
  }

    static Future<Response> deleteRecipe({
    required String docId,
  }) async {
     Response response = Response();
    DocumentReference documentReferencer =
        _Collection.doc(docId);

    await documentReferencer
        .delete()
        .whenComplete((){
          response.code = 200;
          response.message = "Sucessfully Deleted";
        })
        .catchError((e) {
           response.code = 500;
            response.message = e;
        });

   return response;
  }
}