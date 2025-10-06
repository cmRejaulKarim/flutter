import 'package:flutter/material.dart';
import 'package:hr_management/pages/loginpage.dart';
import 'package:hr_management/service/authservice.dart';

class EmployeeProfile extends StatelessWidget {
  final Map<String, dynamic> profile;
  final AuthService _authService = AuthService();

  EmployeeProfile({Key? key, required this.profile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String baseurl = "http://localhost:8085/images/employee/";

    final String? photo = profile['photo'];

    final String? photoUrl = (photo != null && photo.isNotEmpty)
        ? "$baseurl$photo"
        : null;

    return Scaffold(
      appBar: AppBar(
        title: Text('Employee Profile'),
        backgroundColor: Colors.grey,
        centerTitle: true,
        elevation: 4,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              decoration: const BoxDecoration(color: Colors.grey),
              accountName: Text(
                profile['name'] ?? 'Unknown User',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              accountEmail: Text(
                profile['email'] ?? 'N/A',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: (photoUrl != null)
                    ? NetworkImage(photoUrl)
                    : const AssetImage('assets/images/user.png')
                          as ImageProvider,
              ),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: Text('My Profile'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.edit),
              title: Text('Edit Profile'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const Divider(),

            ListTile(
              leading: const Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () async {
                await _authService.logout();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
            ),
          ],
        ),
      ),

      body: SingleChildScrollView(

      ),
    );
  }
}
