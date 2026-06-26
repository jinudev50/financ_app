import 'package:financ_app/Screens/Add_Budget.dart';
import 'package:financ_app/Utilites/color_style.dart';
import 'package:financ_app/widgets/Budget_Card.dart';
import 'package:flutter/material.dart';

class Budget extends StatefulWidget {
  const Budget({super.key});

  @override
  State<Budget> createState() => _BudgetState();
}

class _BudgetState extends State<Budget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back, color: Colors.blue),
        ),
        title: Text(
          'Budgets',
          style: TextStyle(fontWeight: .bold, color: Appcolor.primary),
        ),
        actions: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.blue,
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => AddBudget()),
                    );
                  },
                  icon: Icon(Icons.add, color: Colors.white),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notification_add_outlined,
                  color: Appcolor.primary,
                ),
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(15),
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
                      'Total Monthly Budget',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '4,250.00',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Remaining',
                      style: TextStyle(
                        color: Colors.grey.shade400,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '1,124.50',
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '74% Spent',
                          style: TextStyle(
                            color: Colors.grey.shade400,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    progressBar(
                      progress: 0.75,
                      progressColor: Colors.greenAccent,
                      backgroundColor: Colors.blue.shade200,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 6),
              ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: const [
                  BudgetCard(),
                  SizedBox(height: 3),
                  BudgetCard(),
                  SizedBox(height: 3),
                  BudgetCard(),
                  SizedBox(height: 3),
                  BudgetCard(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget progressBar({
  required double progress,
  required Color progressColor,
  required Color backgroundColor,
}) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(20),
    child: LinearProgressIndicator(
      minHeight: 8,
      value: progress,
      backgroundColor: backgroundColor,
      valueColor: AlwaysStoppedAnimation(progressColor),
    ),
  );
}
