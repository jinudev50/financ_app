import 'package:financ_app/Screens/Add_Transaction.dart';
import 'package:financ_app/Utilites/app_text_styles.dart';
import 'package:financ_app/Utilites/color_style.dart';
import 'package:flutter/material.dart';

class TransactionDetail extends StatefulWidget {
  const TransactionDetail({super.key});

  @override
  State<TransactionDetail> createState() => _TransactionDetailState();
}

class _TransactionDetailState extends State<TransactionDetail> {
  // ignore: non_constant_identifier_names
  final List<Map<String, dynamic>> TranscationDetails = [
    {'title': 'Status', 'Value': 'Complete'},
    {'title': 'Date', 'Value': 'October 24, 2023'},
    {'title': 'Time', 'Value': '02:45 PM'},
    {'title': 'Categorys', 'Value': 'Groceries'},
    {'title': 'Amount', 'Value': 'Main Debit (**** 4291)'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Appcolor.primary),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => AddTransaction()),
            );
          },
        ),
        centerTitle: true,
        title: Text('Transaction Detail', style: AppTextStyles.Heading),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.share, color: Appcolor.primary),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              Image(image: AssetImage('assets/images/Transaction.png')),
              SizedBox(height: 15),
              Text(
                'Groceries & Essentials',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 10),
              Text('-124.50', style: AppTextStyles.bigHeading),
              SizedBox(height: 10),
              Chip(
                backgroundColor: Colors.green.shade100,
                avatar: const CircleAvatar(
                  backgroundColor: Colors.green,
                  child: Icon(Icons.check, size: 14, color: Colors.white),
                ),
                label: const Text(
                  "Completed",
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Appcolor.background,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        ListView.separated(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: TranscationDetails.length,
                          separatorBuilder: (context, index) =>
                              const Divider(height: 20),

                          itemBuilder: (context, index) {
                            return Row(
                              children: [
                                Text(
                                  TranscationDetails[index]['title'],
                                  style: const TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                  ),
                                ),
                                const Spacer(),
                                Text(
                                  TranscationDetails[index]['Value'],
                                  style: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Notes",
                  style: TextStyle(
                    color: Colors.grey.shade700,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),

              const SizedBox(height: 10),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Text(
                  'Weekly grocery run at Whole Foods. \n Includes ingredients for the \n weekend dinner party and \nhousehold supplies.',
                ),
              ),

              SizedBox(height: 10),

              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey.shade200,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.edit),
                    SizedBox(width: 10),
                    Text('Edit Transaction'),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white10,
                  border: Border.all(color: Colors.red),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.delete_forever_outlined),
                    SizedBox(width: 10),
                    Text(
                      'Delete Transaction',
                      style: TextStyle(color: Colors.red),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
