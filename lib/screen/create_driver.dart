// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_core/firebase_core.dart';

// // import dart:core

// class CreateDriver extends StatefulWidget {
//   const CreateDriver({super.key});

//   @override
//   State<CreateDriver> createState() => _CreateDriverState();
// }

// class _CreateDriverState extends State<CreateDriver> {
//   late String studentName, studentID, studyProgramID;
//   late double studentGPA;

//   getStudentName(name) {
//     this.studentName = name;
//   }

//   getStudentID(id) {
//     this.studentID = id;
//   }

//   getStudentProgramID(programID) {
//     this.studyProgramID = programID;
//   }

//   getStudentGPA(gpa) {
//     this.studentGPA = double.parse(gpa);
//   }

//   createData() {
//     print('created');

//     DocumentReference documentReference =
//         FirebaseFirestore.instance.collection("MyStudents").doc(studentName);

//     // create Map
//     Map<String, dynamic> students = {
//       "studentName": studentName,
//       "studentID": studentID,
//       "studyProgramID": studyProgramID,
//       "studentGPA": studentGPA,
//     };

//     // set data

//     documentReference.set(students).whenComplete(() {
//       print('$studentName created');
//     });
//   }

//   readData() {
//     DocumentReference documentReference =
//         FirebaseFirestore.instance.collection("MyStudents").doc(studentName);

//     documentReference.get().then((datasnapshot) {
//       print(datasnapshot.data() ?? ['studentName']);
//       print(datasnapshot.data() ?? ['studentID']);
//       print(datasnapshot.data() ?? ['studentProgramID']);
//       print(datasnapshot.data() ?? ['studentGPA']);
//     });


//     // pop up message 



//   }

//   updateData() {
//     DocumentReference documentReference =
//         FirebaseFirestore.instance.collection("MyStudents").doc(studentName);

//     // create Map
//     Map<String, dynamic> students = {
//       "studentName": studentName,
//       "studentID": studentID,
//       "studyProgramID": studyProgramID,
//       "studentGPA": studentGPA,
//     };

//     // set data

//     documentReference.set(students).whenComplete(() {
//       print('$studentName updated');
//     });
//   }

//   deleteData() {
//     DocumentReference documentReference =
//         FirebaseFirestore.instance.collection("MyStudents").doc(studentName);

//     documentReference.delete().whenComplete(() {
//       print('$studentName deleted');
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Create Driver'),
//         centerTitle: true,
//       ),
//       body: Wrap(
        
//         children: <Widget>[
//           Padding(
//             padding: EdgeInsets.all(16.0),
//             child: TextFormField(
//               decoration: InputDecoration(
//                 fillColor: Colors.white,
//                 labelText: 'Name',
//                 focusedBorder: OutlineInputBorder(
//                   borderSide: BorderSide(color: Colors.blue, width: 2.0),
//                 ),
//               ),
//               onChanged: (String name) {
//                 getStudentName(name);
//               },
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.all(16.0),
//             child: TextFormField(
//               decoration: InputDecoration(
//                 fillColor: Colors.white,
//                 labelText: 'Student ID',
//                 focusedBorder: OutlineInputBorder(
//                   borderSide: BorderSide(color: Colors.blue, width: 2.0),
//                 ),
//               ),
//               onChanged: (String id) {
//                 getStudentID(id);
//               },
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.all(16.0),
//             child: TextFormField(
//               decoration: InputDecoration(
//                 fillColor: Colors.white,
//                 labelText: 'Study Program ID',
//                 focusedBorder: OutlineInputBorder(
//                   borderSide: BorderSide(color: Colors.blue, width: 2.0),
//                 ),
//               ),
//               onChanged: (String programID) {
//                 getStudentProgramID(programID);
//               },
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.all(16.0),
//             child: TextFormField(
//               decoration: InputDecoration(
//                 fillColor: Colors.white,
//                 labelText: 'GPA',
//                 focusedBorder: OutlineInputBorder(
//                   borderSide: BorderSide(color: Colors.blue, width: 2.0),
//                 ),
//               ),
//               onChanged: (String gpa) {
//                 getStudentGPA(gpa);
//               },
//             ),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: <Widget>[
//               ElevatedButtonTheme(
//                 data: ElevatedButtonThemeData(
//                   style: ElevatedButton.styleFrom(
//                     primary: Colors.green,
//                     onPrimary: Colors.white,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(32.0),
//                     ),
//                   ),
//                 ),
//                 child: ElevatedButton(
//                   onPressed: () {
//                     createData();
//                   },
//                   child: const Text('Create'),
//                 ),
//               ),
//               ElevatedButtonTheme(
//                 data: ElevatedButtonThemeData(
//                   style: ElevatedButton.styleFrom(
//                     primary: Colors.blue,
//                     onPrimary: Colors.white,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(32.0),
//                     ),
//                   ),
//                 ),
//                 child: ElevatedButton(
//                   onPressed: () {
//                     readData();
//                   },
//                   child: const Text('Read'),
//                 ),
//               ),
//               ElevatedButtonTheme(
//                 data: ElevatedButtonThemeData(
//                   style: ElevatedButton.styleFrom(
//                     primary: Colors.orange,
//                     onPrimary: Colors.white,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(32.0),
//                     ),
//                   ),
//                 ),
//                 child: ElevatedButton(
//                   onPressed: () {
//                     updateData();
//                   },
//                   child: const Text('Update'),
//                 ),
//               ),
//               ElevatedButtonTheme(
//                 data: ElevatedButtonThemeData(
//                   style: ElevatedButton.styleFrom(
//                     primary: Colors.red,
//                     onPrimary: Colors.white,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(32.0),
//                     ),
//                   ),
//                 ),
//                 child: ElevatedButton(
//                   onPressed: () {
//                     deleteData();
//                   },
//                   child: const Text('Delete'),
//                 ),
//               ),
//             ],
//           ),
          
//         ],
//       ),
//     );
//   }
// }
