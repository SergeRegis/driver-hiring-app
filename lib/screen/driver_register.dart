// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';

// class DriverRegister extends StatefulWidget {
//   const DriverRegister({super.key});

//   @override
//   State<DriverRegister> createState() => _DriverRegisterState();
// }

// class _DriverRegisterState extends State<DriverRegister> {
//   late String driverName,
//       driverID,
//       driverNationality,
//       driverGender,
//       driverAddress,
//       driverCategory;

//   getDriverName(fullname) {
//     this.driverName = fullname;
//   }

//   getDriverID(id) {
//     this.driverID = id;
//   }

//   getDriverNationality(nationality) {
//     this.driverNationality = nationality;
//   }

//   getDriverGender(gender) {
//     this.driverGender = gender;
//   }

//   getDriverAddress(address) {
//     this.driverAddress = address;
//   }

//   getDriverCategoryClass(categoryclass) {
//     this.driverCategory = categoryclass;
//   }

//   createData() {
//     print('created');

//     DocumentReference documentReference = FirebaseFirestore.instance
//         .collection("register_driver")
//         .doc(driverName);

//     // create Map
//     Map<String, dynamic> driver = {
//       "driverName": driverName,
//       "driverID": driverID,
//       "driverNationality": driverNationality,
//       "driverGender": driverGender,
//       "driverAddress": driverAddress,
//       "driverCategory": driverCategory,
//     };

//     // set data

//     documentReference.set(driver).whenComplete(() {
//       print('$driverName created');
//     });
//   }

//   updateData() {
//     DocumentReference documentReference = FirebaseFirestore.instance
//         .collection("register_driver")
//         .doc(driverName);

//     Map<String, dynamic> driver = {
//       "driverName": driverName,
//       "driverID": driverID,
//       "driverNationality": driverNationality,
//       "driverGender": driverGender,
//       "driverAddress": driverAddress,
//       "driverCategory": driverCategory,
//     };

//     documentReference.set(driver).whenComplete(() {
//       print('$driverName updated');
//     });
//   }

//   deleteData() {
//     DocumentReference documentReference = FirebaseFirestore.instance
//         .collection("register_driver")
//         .doc(driverName);

//     documentReference.delete().whenComplete(() {
//       print('$driverName deleted');
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // resizeToAvoidBottomInset: false,
//       // // resizeToAvoidBottomPadding: false,
//       appBar: AppBar(
//         title: Text('The Requistion Form'),
//         centerTitle: true,
//       ),

//       body: SingleChildScrollView(
      
//         child: Wrap(
//           children: <Widget>[
//             Padding(
//               padding: EdgeInsets.all(10),
//               child: TextFormField(
//                 decoration: InputDecoration(
//                   fillColor: Colors.white,
//                   labelText: 'FullName',
//                   focusedBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: Colors.blue, width: 2.0),
//                   ),
//                 ),
//                 onChanged: (String fullname) {
//                   getDriverName(fullname);
//                 },
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.all(10),
//               child: TextFormField(
//                 decoration: InputDecoration(
//                   fillColor: Colors.white,
//                   labelText: 'Nation ID',
//                   focusedBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: Colors.blue, width: 2.0),
//                   ),
//                 ),
//                 onChanged: (String id) {
//                   getDriverID(id);
//                 },
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.all(16.0),
//               child: TextFormField(
//                 decoration: InputDecoration(
//                   fillColor: Colors.white,
//                   labelText: 'Nationality',
//                   focusedBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: Colors.blue, width: 2.0),
//                   ),
//                 ),
//                 onChanged: (String nationality) {
//                   getDriverNationality(nationality);
//                 },
//               ),
//             ),
//             // Padding(
//             //   padding: EdgeInsets.all(16.0),
//             //   child: TextFormField(
//             //     decoration: InputDecoration(
//             //       fillColor: Colors.white,
//             //       labelText: 'Age',
//             //       focusedBorder: OutlineInputBorder(
//             //         borderSide: BorderSide(color: Colors.blue, width: 2.0),
//             //       ),
//             //     ),
//             //     onChanged: (String age) {
//             //       getDriverAge(age);
//             //     },
//             //   ),
//             // ),
//             Padding(
//               padding: EdgeInsets.all(16.0),
//               child: TextFormField(
//                 decoration: InputDecoration(
//                   fillColor: Colors.white,
//                   labelText: 'Gender',
//                   focusedBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: Colors.blue, width: 2.0),
//                   ),
//                 ),
//                 onChanged: (String gender) {
//                   getDriverGender(gender);
//                 },
//               ),
//             ),

//             Padding(
//               padding: EdgeInsets.all(16.0),
//               child: TextFormField(
//                 decoration: InputDecoration(
//                   fillColor: Colors.white,
//                   labelText: 'Address',
//                   focusedBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: Colors.blue, width: 2.0),
//                   ),
//                 ),
//                 onChanged: (String address) {
//                   getDriverAddress(address);
//                 },
//               ),
//             ),

//             Padding(
//               padding: EdgeInsets.all(16.0),
//               child: TextFormField(
//                 decoration: InputDecoration(
//                   fillColor: Colors.white,
//                   labelText: 'Category Class',
//                   focusedBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: Colors.blue, width: 2.0),
//                   ),
//                 ),
//                 onChanged: (String categoryclass) {
//                   getDriverCategoryClass(categoryclass);
//                 },
//               ),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: <Widget>[
//                 ElevatedButtonTheme(
//                   data: ElevatedButtonThemeData(
//                     style: ElevatedButton.styleFrom(
//                       primary: Colors.green,
//                       onPrimary: Colors.white,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(32.0),
//                       ),
//                     ),
//                   ),
//                   child: ElevatedButton(
//                     onPressed: () {
//                       createData();
//                     },
//                     child: const Text('Submit'),
//                   ),
//                 ),
                
//                 ElevatedButtonTheme(
//                   data: ElevatedButtonThemeData(
//                     style: ElevatedButton.styleFrom(
//                       primary: Colors.orange,
//                       onPrimary: Colors.white,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(32.0),
//                       ),
//                     ),
//                   ),
//                   child: ElevatedButton(
//                     onPressed: () {
//                       updateData();
//                     },
//                     child: const Text('Update'),
//                   ),
//                 ),
//                 ElevatedButtonTheme(
//                   data: ElevatedButtonThemeData(
//                     style: ElevatedButton.styleFrom(
//                       primary: Colors.red,
//                       onPrimary: Colors.white,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(32.0),
//                       ),
//                     ),
//                   ),
//                   child: ElevatedButton(
//                     onPressed: () {
//                       deleteData();
//                     },
//                     child: const Text('Delete'),
//                   ),
//                 ),
//               ],
//             ),
//             Padding(
//                 padding: EdgeInsets.only(
//                     bottom: MediaQuery.of(context).viewInsets.bottom))
//           ],
//         ),
//       ),
//     );
//   }
// }
