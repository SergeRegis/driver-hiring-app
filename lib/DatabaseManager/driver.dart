// import 'dart:ffi';

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// import '../screen/driver_profile.dart';
// class DatabaseManager{
//   final CollectionReference driverList = FirebaseFirestore.instance.collection('driverInfo');
//   Future<void> createUserData(String uid, String name, String email, Int phone, String address) async{
//     return await driverList.doc(uid).set({
//       'uid': uid,
//       'name': name,
//       'email': email,
//       'phone': phone,
//       'address': address,
//       // 'vehicleNumber': vehicleNumber,
//       // 'vehicleType': vehicleType,
//       // 'vehicleModel': vehicleModel,
//       // 'vehicleColor': vehicleColor,




//     });

    

//   }

// }

// // // ignore: use_function_type_syntax_for_parameters
// // if(driverList.doc(uid).get() != null){
// //       Navigator.push(context,MaterialPageRoute(builder: (context) => const DriverProfile()),;
// //     }
// //     else{
// //       return value;
// //     }


// To parse this JSON data, do
//
//     final item = itemFromJson(jsonString);

// To parse this JSON data, do
//
//     final item = itemFromJson(jsonString);

import 'dart:convert';

Item itemFromJson(String str) => Item.fromJson(json.decode(str));

String itemToJson(Item data) => json.encode(data.toJson());

class Item {
    Item({
        required this.id,
        required this.name,
        required this.quantity,
    });

    String id;
    String name;
    String quantity;

    factory Item.fromJson(Map<String, dynamic> json) => Item(
        id: json["id"],
        name: json["name"],
        quantity: json["quantity"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "quantity": quantity,
    };
}
