import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future<QuerySnapshot> getCollection() async {
  return await FirebaseFirestore.instance
      .collection('notification_report')
      .get();
}

class DriverProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<QuerySnapshot>(
      future: getCollection(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return SafeArea(
            child: Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            ),
            );
        }

        List<QueryDocumentSnapshot<Object?>>? docs = snapshot.data?.docs;
        return Scaffold(
          appBar: AppBar(
            title: const Text('Call Driver'),
            centerTitle: true,
          ),
          body: ListView.builder(
            itemCount: docs!.length,
            itemBuilder: (context, int index) {
              DocumentSnapshot document = docs[index];
              return Column(
                children: [
                  Card(
                      child: Column(children: [
                    ListTile(
                      title: Text(document['FullName']),
                      subtitle: Text(document['Email']),
                      trailing: Text(document['CategoryClass']),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(document['Gender']),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(document['PhoneNumber'].toString()),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(document['Address']),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                      ],
                    )
                  ]))
                ],
              );
            },
          ),
        );
      },
    );
  }
}
