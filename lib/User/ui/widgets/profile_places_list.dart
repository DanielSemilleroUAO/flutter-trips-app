import 'package:flutter/material.dart';
import 'profile_place.dart';
import 'package:platzi_trips_app/Place/model/place.dart';

class ProfilePlacesList extends StatelessWidget {

  //Place place = new Place('Knuckles Mountains Range', 'Hiking. Water fall hunting. Natural bath', 'Scenery & Photography', '123,123,123');
  //Place place2 = new Place('Mountains', 'Hiking. Water fall hunting. Natural bath', 'Scenery & Photography', '321,321,321');

  Place place = Place(
      name: 'Knuckles Mountains Range',
      description:'Hiking. Water fall hunting. Natural bath',
      urlImage: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS34_4mzCifbB_FarDNmhc2_VNH_g0UTHn7zXZ_WGTKiFl_xp8uad-QHma_zc26-cPLU0k&usqp=CAU',
      likes: 5);
  Place place2 = Place(
      name: 'Knuckles Mountains Range',
      description:'Hiking. Water fall hunting. Natural bath',
      urlImage: 'https://images.unsplash.com/photo-1524654458049-e36be0721fa2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80',
      likes: 5);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: 10.0,
          left: 20.0,
          right: 20.0,
          bottom: 10.0
      ),
      child: Column(
        children: <Widget>[
          ProfilePlace(place),
          ProfilePlace(place2),
        ],
      ),
    );
  }

}