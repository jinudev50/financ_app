import 'package:financ_app/Screens/Setting.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Profile());
}

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Screen',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Profile",
          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (_) => SettingsApp()),
              );
            },
            icon: Icon(Icons.settings, color: Colors.blue),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Profile header
            const CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage(
                "assets/profile.jpg",
              ), // replace with your image
            ),
            const SizedBox(height: 12),
            const Text(
              "Alex Johnson",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Text(
              "alex.johnson@example.com",
              style: TextStyle(color: Colors.grey),
            ),

            const SizedBox(height: 24),

            // Account Settings section
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Account Settings",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 8),
            Card(
              child: Column(
                children: const [
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Personal Info"),
                    subtitle: Text("Edit your personal details"),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.account_balance_wallet),
                    title: Text("My Accounts"),
                    subtitle: Text("Manage linked cards and banks"),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            // Security section
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Security & Compliance",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 8),
            Card(
              child: Column(
                children: const [
                  ListTile(
                    leading: Icon(Icons.lock),
                    title: Text("Security"),
                    subtitle: Text("Passwords, 2FA & sessions"),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.link),
                    title: Text("Bank Connections"),
                    subtitle: Text("Manage Open Banking APIs"),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.privacy_tip),
                    title: Text("Privacy"),
                    subtitle: Text("Data usage & tracking"),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            InkWell(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.all(10),
                // margin: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color.fromARGB(255, 243, 176, 176),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.exit_to_app, color: Colors.red),
                    SizedBox(width: 10),
                    Text(
                      'Logout',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Logout button
            // ElevatedButton(
            //   style: ElevatedButton.styleFrom(
            //     backgroundColor: Colors.red,
            //     padding: const EdgeInsets.symmetric(
            //       horizontal: 24,
            //       vertical: 12,
            //     ),
            //   ),
            //   onPressed: () {
            //     // Add logout logic here
            //   },
            //   child: const Text("Logout from Device"),
            // ),
          ],
        ),
      ),
    );
  }
}
