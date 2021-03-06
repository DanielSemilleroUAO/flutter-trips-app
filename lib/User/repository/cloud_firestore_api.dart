import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:platzi_trips_app/Place/model/place.dart';
import 'package:platzi_trips_app/User/model/user.dart'as Model;


class CloudFirestoreAPI {

  final String USERS = "users";
  final String PLACES = "places";

  final Firestore _db = Firestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  void updateUserData(Model.User user) async{
    DocumentReference ref = _db.collection(USERS).document(user.uid);
    return await ref.setData({
      'uid': user.uid,
      'name': user.name,
      'email': user.email,
      'photoURL': user.photURL,
      'myPlaces': user.myPlaces,
      'myFavoritePlaces': user.myFavoritePlaces,
      'lastSignIn': DateTime.now()

    }, merge: true);

  }

  Future<void> updatePlaceData(Place place) async {
    CollectionReference refPlaces = _db.collection(PLACES);

    await _auth.currentUser().then((FirebaseUser user){
      refPlaces.add({
        'name' : place.name,
        'description': place.description,
        'likes': place.likes,
        'urlimage': place.urlImage,
        'userOwner': "${USERS}/${user.uid}",//reference
      });
    });


  }

}