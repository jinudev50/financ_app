import 'package:financ_app/Screens/Budget.dart';
import 'package:financ_app/Utilites/color_style.dart';
import 'package:flutter/material.dart';

class AddBudget extends StatefulWidget {
  const AddBudget({super.key});

  @override
  State<AddBudget> createState() => _AddBudgetState();
}

class _AddBudgetState extends State<AddBudget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (_) => Budget()),
            );
          },
          icon: Icon(Icons.arrow_back, color: Colors.blue),
        ),
        title: Text(
          'Create Budgets',
          style: TextStyle(fontWeight: .bold, color: Appcolor.primary),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              // margin: EdgeInsets.all(15),
              padding: EdgeInsets.all(12),
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Appcolor.primary,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Financial Goal',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Plan Your Future',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Set a limit to stay on track this period .',
                    style: TextStyle(
                      color: Colors.grey.shade400,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: categoryCard(
                    icon: Icons.shopping_bag_outlined,
                    title: "Shopping",
                    selected: false,
                  ),
                ),

                const SizedBox(width: 10),

                Expanded(
                  child: categoryCard(
                    icon: Icons.restaurant,
                    title: "Dining",
                    selected: true,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),

            Row(
              children: [
                Expanded(
                  child: categoryCard(
                    icon: Icons.directions_bus,
                    title: "Transport",
                    selected: false,
                  ),
                ),

                const SizedBox(width: 10),

                Expanded(
                  child: categoryCard(
                    icon: Icons.more_horiz,
                    title: "Other",
                    selected: false,
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                prefixText: "\$ ",
                hintText: "0.00",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            SizedBox(height: 15),
            Container(
              height: 45,
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text(
                          "Monthly",
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),

                  const Expanded(child: Center(child: Text("Weekly"))),
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Row(
                children: [
                  const Icon(Icons.notifications_none),

                  const SizedBox(width: 10),

                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Budget Alerts",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Notify me when I reach 80%",
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                      ],
                    ),
                  ),

                  Switch(value: true, onChanged: (value) {}),
                ],
              ),
            ),
            SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  "Create Budget",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget categoryCard({
  required IconData icon,
  required String title,
  required bool selected,
}) {
  return Container(
    height: 80,
    width: 150,
    decoration: BoxDecoration(
      color: selected ? Colors.blue : Colors.white,
      borderRadius: BorderRadius.circular(12),
      border: Border.all(color: Colors.grey.shade300),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 18,
          backgroundColor: selected
              ? Colors.blue.shade700
              : Colors.grey.shade200,
          child: Icon(icon, color: selected ? Colors.white : Colors.grey),
        ),

        const SizedBox(height: 8),

        Text(
          title,
          style: TextStyle(
            color: selected ? Colors.white : Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    ),
  );
}
