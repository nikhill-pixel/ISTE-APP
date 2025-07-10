import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ProfilePage extends StatelessWidget {
  final bool isDarkMode;
  const ProfilePage({super.key, required this.isDarkMode});

  @override
  Widget build(BuildContext context) {
    final User? currentUser = FirebaseAuth.instance.currentUser;

    return Scaffold(
      backgroundColor: isDarkMode ? const Color(0xFF131318): Colors.white,
      appBar: AppBar(
        titleTextStyle: TextStyle(color: Colors.white,fontFamily: 'Roboto', fontSize:25,fontWeight: FontWeight.bold),
        backgroundColor: Colors.blue,
        title: Text('Your Profile Page'),
      ),
      body: StreamBuilder<DocumentSnapshot>(

        stream: FirebaseFirestore.instance
            .collection('users')
            .doc(currentUser?.uid)
            .snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          final userData = snapshot.data?.data() as Map<String, dynamic>?;

          return SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: isDarkMode?Colors.white:Colors.black,
                  radius: 50,
                  child: Icon(Icons.person, size: 50,color:isDarkMode?Colors.black:Colors.white),
                ),
                const SizedBox(height: 20),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15), // Optional for rounded edges
                    side: BorderSide(
                      color: Colors.blue, // Border color
                      width: 2,          // Border width
                    ),
                  ),
                  color:isDarkMode?Colors.black:Colors.white70,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.person_outline,color:isDarkMode?Colors.white:Colors.black),
                          title: Text('Name',style: TextStyle(color:isDarkMode?Colors.white:Colors.black)),
                          subtitle: Text(userData?['name'] ?? 'Not set',style: TextStyle(color:isDarkMode?Colors.white:Colors.black)),
                        ),
                        const Divider(),
                        ListTile(
                          leading: Icon(Icons.numbers,color:isDarkMode?Colors.white:Colors.black),
                          title: Text('Roll Number',style: TextStyle(color:isDarkMode?Colors.white:Colors.black)),
                          subtitle: Text(userData?['rollNo'] ?? 'Not set',style: TextStyle(color:isDarkMode?Colors.white:Colors.black)),
                        ),
                        const Divider(),
                        ListTile(
                          leading: Icon(Icons.email_outlined,color:isDarkMode?Colors.white:Colors.black),
                          title: Text('Email',style: TextStyle(color:isDarkMode?Colors.white:Colors.black)),
                          subtitle: Text(userData?['email'] ?? 'Not set',style: TextStyle(color:isDarkMode?Colors.white:Colors.black)),
                        ),
                        const Divider(),
                        ListTile(
                          leading: Icon(Icons.calendar_month_rounded,color:isDarkMode?Colors.white:Colors.black),
                          title: Text('Date of Birth',style: TextStyle(color:isDarkMode?Colors.white:Colors.black)),
                          subtitle: Text(userData?['dob'] ?? 'Not set',style: TextStyle(color:isDarkMode?Colors.white:Colors.black)),
                        ),
                        const Divider(),
                        ListTile(
                          leading: Icon(Icons.calendar_today_sharp,color:isDarkMode?Colors.white:Colors.black),
                          title: Text('Year of Graduation',style: TextStyle(color:isDarkMode?Colors.white:Colors.black)),
                          subtitle: Text(userData?['year'] ?? 'Not set',style: TextStyle(color:isDarkMode?Colors.white:Colors.black)),
                        ),
                        const Divider(),
                        ListTile(
                          leading: Icon(Icons.book_online_rounded,color:isDarkMode?Colors.white:Colors.black),
                          title: Text('SIG',style: TextStyle(color:isDarkMode?Colors.white:Colors.black)),
                          subtitle: Text(userData?['sig'] ?? 'Not set',style: TextStyle(color:isDarkMode?Colors.white:Colors.black)),
                        ),
                        const Divider(),
                        ListTile(
                          leading: Icon(Icons.phone_android_sharp,color:isDarkMode?Colors.white:Colors.black),
                          title: Text('Phone Number',style: TextStyle(color:isDarkMode?Colors.white:Colors.black)),
                          subtitle: Text(userData?['phone'] ?? 'Not set',style: TextStyle(color:isDarkMode?Colors.white:Colors.black)),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}