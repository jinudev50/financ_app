import 'package:financ_app/Screens/Profile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const SettingsApp());
}

class SettingsApp extends StatelessWidget {
  const SettingsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Settings Screen',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const SettingsPage(),
    );
  }
}

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool darkMode = false;
  bool biometricLock = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (_) => Profile()),
            );
          },
          icon: Icon(Icons.arrow_back, color: Colors.blue),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Profile section
          Column(
            children: const [
              CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage(
                  "assets/profile.jpg",
                ), // replace with your image
              ),
              SizedBox(height: 12),
              Text(
                "Alex Thompson",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                "alex.t@fintechapp.com",
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          const SizedBox(height: 24),

          // Appearance
          const Text(
            "Appearance",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Card(
            child: SwitchListTile(
              title: const Text("Dark Mode"),
              value: darkMode,
              onChanged: (val) {
                setState(() => darkMode = val);
              },
            ),
          ),

          const SizedBox(height: 16),

          // Localization
          const Text(
            "Localization",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Card(
            child: Column(
              children: const [
                ListTile(
                  leading: Icon(Icons.attach_money),
                  title: Text("Currency"),
                  subtitle: Text("USD"),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.language),
                  title: Text("Language"),
                  subtitle: Text("English"),
                ),
              ],
            ),
          ),

          const SizedBox(height: 16),

          // Security
          const Text(
            "Security",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Card(
            child: Column(
              children: [
                SwitchListTile(
                  title: const Text("Biometric Lock"),
                  value: biometricLock,
                  onChanged: (val) {
                    setState(() => biometricLock = val);
                  },
                ),
                const Divider(),
                const ListTile(
                  leading: Icon(Icons.pin),
                  title: Text("Change PIN"),
                ),
              ],
            ),
          ),

          const SizedBox(height: 16),

          // Support
          const Text(
            "Support",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Card(
            child: Column(
              children: const [
                ListTile(leading: Icon(Icons.info), title: Text("About App")),
                Divider(),
                ListTile(
                  leading: Icon(Icons.help),
                  title: Text("Help & Support"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
