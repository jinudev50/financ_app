// import 'package:flutter/material.dart';

// void main() {
//   runApp(const NotificationsApp());
// }

// class NotificationsApp extends StatelessWidget {
//   const NotificationsApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Notifications',
//       theme: ThemeData(primarySwatch: Colors.blue),
//       home: const NotificationsPage(),
//     );
//   }
// }

// class NotificationsPage extends StatelessWidget {
//   const NotificationsPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Notifications")),
//       body: ListView(
//         padding: const EdgeInsets.all(16),
//         children: [
//           const Text(
//             "Recent",
//             style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//           ),
//           const SizedBox(height: 8),

//           // Budget Alert
//           ListTile(
//             leading: const Icon(Icons.warning, color: Colors.red),
//             title: const Text("Budget Alert"),
//             subtitle: const Text(
//               "You've reached 80% of your Dining budget. You have \$42.00 remaining for the week.",
//             ),
//             trailing: const Text(
//               "2m ago",
//               style: TextStyle(color: Colors.grey, fontSize: 12),
//             ),
//           ),
//           const Divider(),

//           // Payment Confirmed
//           ListTile(
//             leading: const Icon(Icons.check_circle, color: Colors.green),
//             title: const Text("Payment Confirmed"),
//             subtitle: const Text(
//               "Your payment of \$1,250.00 to 'Global Rent Properties' was successful.",
//             ),
//             trailing: const Text(
//               "45m ago",
//               style: TextStyle(color: Colors.grey, fontSize: 12),
//             ),
//           ),

//           const SizedBox(height: 16),
//           const Text(
//             "Older",
//             style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//           ),
//           const SizedBox(height: 8),

//           // Financial Insight
//           ListTile(
//             leading: const Icon(Icons.lightbulb, color: Colors.brown),
//             title: const Text("Financial Insight"),
//             subtitle: const Text(
//               "Based on your spending, moving \$300 to your 'Vacation' savings could earn you \$12 in extra interest this year.",
//             ),
//             trailing: const Text(
//               "Yesterday",
//               style: TextStyle(color: Colors.grey, fontSize: 12),
//             ),
//           ),
//           const Divider(),

//           // Subscription Renewed
//           ListTile(
//             leading: const Icon(Icons.autorenew, color: Colors.grey),
//             title: const Text("Subscription Renewed"),
//             subtitle: const Text(
//               "Your monthly subscription to 'CloudStorage Pro' was charged for \$9.99.",
//             ),
//             trailing: const Text(
//               "Oct 12",
//               style: TextStyle(color: Colors.grey, fontSize: 12),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
