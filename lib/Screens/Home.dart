import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt_long),
            label: "Transactions",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.analytics),
            label: "Analytics",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet),
            label: "Budgets",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Profile",
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Header
              Row(
                children: [
                  const CircleAvatar(
                    radius: 22,
                    backgroundImage: AssetImage("assets/images/profile.jpg"),
                  ),
                  const SizedBox(width: 12),

                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome back,",
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text(
                          "Hello, Alex",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.notifications_none),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              /// Balance Card
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Total Balance",
                      style: TextStyle(color: Colors.white70),
                    ),
                    SizedBox(height: 20),

                    Text(
                      "\$ 24,562.00",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              /// Income Expense
              // Row(
              //   children: [
              //     Expanded(
              //       child: _statCard(
              //         "Income",
              //         "\$5,240",
              //         Icons.arrow_downward,
              //         Colors.green,
              //       ),
              //     ),

              //     const SizedBox(width: 12),

              //     Expanded(
              //       child: _statCard(
              //         "Expense",
              //         "\$2,184",
              //         Icons.arrow_upward,
              //         Colors.red,
              //       ),
              //     ),
              //   ],
              // ),

              // const SizedBox(height: 25),

              // const Text(
              //   "Quick Actions",
              //   style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              // ),

              // const SizedBox(height: 15),

              // /// Quick Actions
              // Row(
              //   children: [
              //     Expanded(child: _actionCard(Icons.add_circle_outline, "Add")),
              //     const SizedBox(width: 10),

              //     Expanded(child: _actionCard(Icons.send, "Send")),

              //     const SizedBox(width: 10),

              //     Expanded(child: _actionCard(Icons.receipt_long, "Bills")),
              //   ],
              // ),

              // const SizedBox(height: 30),

              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     const Text(
              //       "Recent Transactions",
              //       style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              //     ),
              //     TextButton(onPressed: () {}, child: const Text("See All")),
              //   ],
              // ),

              // _transactionCard(
              //   "Apple Store",
              //   "Electronics • 2h ago",
              //   "-\$999.00",
              //   Colors.red,
              // ),

              // _transactionCard(
              //   "Blue Ginger",
              //   "Dining • Yesterday",
              //   "-\$42.50",
              //   Colors.red,
              // ),

              // _transactionCard(
              //   "Salary Deposit",
              //   "Income • 2 days ago",
              //   "+\$4,200.00",
              //   Colors.green,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
