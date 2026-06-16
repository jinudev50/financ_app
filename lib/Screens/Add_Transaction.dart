import 'package:flutter/material.dart';

class AddTransaction extends StatefulWidget {
  const AddTransaction({super.key});

  @override
  State<AddTransaction> createState() => _AddTransactionState();
}

class _AddTransactionState extends State<AddTransaction> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Finance Tracker',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const AddTransactionPage(),
    );
  }
}

class AddTransactionPage extends StatefulWidget {
  const AddTransactionPage({super.key});

  @override
  State<AddTransactionPage> createState() => _AddTransactionPageState();
}

class _AddTransactionPageState extends State<AddTransactionPage> {
  bool isExpense = true;
  final TextEditingController amountController = TextEditingController();
  final TextEditingController notesController = TextEditingController();
  DateTime selectedDate = DateTime.now();

  final List<Map<String, dynamic>> categories = [
    {"icon": Icons.shopping_bag, "label": "Shopping"},
    {"icon": Icons.fastfood, "label": "Food"},
    {"icon": Icons.directions_bus, "label": "Transport"},
    {"icon": Icons.health_and_safety, "label": "Health"},
    {"icon": Icons.receipt_long, "label": "Bills"},
    {"icon": Icons.movie, "label": "Media"},
    {"icon": Icons.flight, "label": "Travel"},
    {"icon": Icons.more_horiz, "label": "More"},
  ];

  String selectedCategory = "Shopping";

  Future<void> _pickDate() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: const Text("Add Transaction"))),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Expense / Income toggle
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 238, 236, 236),
                  border: Border.all(color: Colors.white),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ChoiceChip(
                      label: const Text("Expense"),
                      selected: isExpense,
                      selectedColor: Colors.red,
                      labelStyle: TextStyle(
                        color: isExpense ? Colors.white : Colors.black,
                      ),
                      onSelected: (_) => setState(() => isExpense = true),
                    ),
                    ChoiceChip(
                      label: const Text("Income"),
                      selected: !isExpense,
                      selectedColor: Colors.green,
                      labelStyle: TextStyle(
                        color: !isExpense ? Colors.white : Colors.black,
                      ),
                      onSelected: (_) => setState(() => isExpense = false),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),

            Center(
              child: Text(
                'Amount',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            const SizedBox(height: 20),

            // Amount field
            TextField(
              controller: amountController,
              keyboardType: TextInputType.number,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
                prefixText: "\$ ",
                hintText: "0.00",
                border: InputBorder.none,
              ),
            ),

            const SizedBox(height: 40),

            // Categories
            const Text(
              "Category",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Wrap(
              spacing: 10,
              children: categories.map((cat) {
                final isSelected = selectedCategory == cat["label"];
                return ChoiceChip(
                  avatar: Icon(
                    cat["icon"],
                    color: isSelected ? Colors.white : Colors.black,
                  ),
                  label: Text(cat["label"]),
                  selected: isSelected,
                  selectedColor: Colors.blue,
                  labelStyle: TextStyle(
                    color: isSelected ? Colors.white : Colors.black,
                  ),
                  onSelected: (_) {
                    setState(() {
                      selectedCategory = cat["label"];
                    });
                  },
                );
              }).toList(),
            ),

            const SizedBox(height: 20),

            const Text(
              "Date",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),

            // Date picker
            Container(
              height: 60,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(255, 238, 236, 236),
                border: Border.all(color: Colors.white),
              ),
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.calendar_today, color: Colors.grey),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    "${selectedDate.day}-${selectedDate.month}-${selectedDate.year}",
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: _pickDate,
                    child: const Text("Change Date"),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              "Notes",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),

            TextField(
              controller: notesController,
              decoration: const InputDecoration(
                hintText: "Add a description...",
                border: OutlineInputBorder(),
              ),
              maxLines: 2,
            ),

            const SizedBox(height: 30),

            // Save button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  debugPrint(
                    "Saved: ${isExpense ? "Expense" : "Income"} "
                    "\$${amountController.text} "
                    "Category: $selectedCategory "
                    "Date: $selectedDate "
                    "Notes: ${notesController.text}",
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                child: const Text(
                  "Save Transaction",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
