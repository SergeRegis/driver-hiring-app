import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class ValidateDriverForm extends StatefulWidget {
  @override
  State<ValidateDriverForm> createState() => _ValidateDriverFormState();
}

class _ValidateDriverFormState extends State<ValidateDriverForm> {
  final _formKey = GlobalKey<FormState>();

  final _scrollController = ScrollController();

  final _emailController = TextEditingController();
  final _nameController = TextEditingController();

  late String driverName,
      driverID,
      driverNationality,
      driverGender,
      driverAddress,
      driverCategory,
      driverExperience,
      driverPhoneNumber,
      driverEmail,
      driverAge;

  getDriverName(fullname) {
    this.driverName = fullname;
  }

  getDriverExperience(experience) {
    this.driverExperience = experience;
  }

  getDriverPhoneNumber(phoneNumber) {
    this.driverPhoneNumber = phoneNumber;
  }

  getDriverID(id) {
    this.driverID = id;
  }

  getDriverNationality(nationality) {
    this.driverNationality = nationality;
  }

  getDriverGender(gender) {
    this.driverGender = gender;
  }

  getDriverAddress(address) {
    this.driverAddress = address;
  }

  getDriverCategoryClass(categoryclass) {
    this.driverCategory = categoryclass;
  }

  getDriverEmail(email) {
    this.driverEmail = email;
  }

  getDriverAge(age) {
    this.driverAge = age;
  }

  createData() {
    print('created');

    DocumentReference documentReference = FirebaseFirestore.instance
        .collection("register_driver")
        .doc(driverName);

    // create Map
    Map<String, dynamic> driver = {
      "driverName": driverName,
      "driverID": driverID,
      "driverNationality": driverNationality,
      "driverGender": driverGender,
      "driverAddress": driverAddress,
      "driverCategory": driverCategory,
      'driverExperience': driverExperience,
      'driverPhoneNumber': driverPhoneNumber,
      'driverEmail': driverEmail,
      'driverAge': driverAge,
    };

    // set data

    documentReference.set(driver).whenComplete(() {
      print('$driverName created');
    });
  }

  updateData() {
    DocumentReference documentReference = FirebaseFirestore.instance
        .collection("register_driver")
        .doc(driverName);

    Map<String, dynamic> driver = {
      "driverName": driverName,
      "driverID": driverID,
      "driverNationality": driverNationality,
      "driverGender": driverGender,
      "driverAddress": driverAddress,
      "driverCategory": driverCategory,
      'driverExperience': driverExperience,
      'driverPhoneNumber': driverPhoneNumber,
      'driverEmail': driverEmail,
      'driverAge': driverAge,
    };

    documentReference.set(driver).whenComplete(() {
      print('$driverName updated');
    });
  }

  deleteData() {
    DocumentReference documentReference = FirebaseFirestore.instance
        .collection("register_driver")
        .doc(driverName);

    documentReference.delete().whenComplete(() {
      print('$driverName deleted');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Requistion Model'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          controller: _scrollController,
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'FullName',
                  ),
                  onChanged: (String fullname) {
                    getDriverName(fullname);
                  },
                ),
                SizedBox(height: 16.0),
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: 'Email',
                  ),
                  onChanged: (String email) {
                    getDriverEmail(email);
                  },
                  validator: (value) {
              if (!RegExp(r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$').hasMatch(value!)) {
                return 'Please enter a valid email';
              }
              return null;
            },
                
                ),
                SizedBox(height: 16.0),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Phone number',
                  ),
                  onChanged: (String phoneNumber) {
                    getDriverPhoneNumber(phoneNumber);
                  },
                ),
                SizedBox(height: 16.0),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Age',
                  ),
                  onChanged: (String age) {
                    getDriverAge(age);
                  },
                ),
                SizedBox(height: 16.0),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'ID No',
                  ),
                  onChanged: (String id) {
                    getDriverID(id);
                  },
                ),
                
                SizedBox(height: 16.0),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Nationality',
                  ),
                  onChanged: (String nationality) {
                    getDriverNationality(nationality);
                  },
                ),
                
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Address',
                  ),
                  onChanged: (String address) {
                    getDriverAddress(address);
                  },
                ),
                SizedBox(height: 16.0),
                TextFormField(
                  // obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Gender',
                  ),
                  onChanged: (String gender) {
                    getDriverGender(gender);
                  },
                ),
                
                

                SizedBox(height: 16.0),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'CategoryClass',
                  ),
                  onChanged: (String categoryclass) {
                    getDriverCategoryClass(categoryclass);
                  },
                ),
                SizedBox(height: 16.0),
                
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Experience',
                  ),
                  onChanged: (String experience) {
                    getDriverExperience(experience);
                  },
                ),
                SizedBox(height: 16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButtonTheme(
                      data: ElevatedButtonThemeData(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                          onPrimary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32.0),
                          ),
                        ),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          createData();

                          if (_formKey.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Processing Data')),
                            );
                          }
                          // Clear text of TextFormField
                          
                          _nameController.clear();
                        },
                        child: const Text('Submit'),
                      ),
                    ),
                    ElevatedButtonTheme(
                      data: ElevatedButtonThemeData(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          onPrimary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32.0),
                          ),
                        ),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          updateData();

                          if (_formKey.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Updating Data')),
                            );
                          }
                        },
                        child: const Text('Update'),
                      ),
                    ),
                    ElevatedButtonTheme(
                      data: ElevatedButtonThemeData(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                          onPrimary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32.0),
                          ),
                        ),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          deleteData();

                          if (_formKey.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Deleting Data')),
                            );
                          }
                        },
                        child: const Text('Delete'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}


