import 'package:financ_app/Screens/Add_Transaction.dart';
import 'package:financ_app/Utilites/app_text_styles.dart';
import 'package:financ_app/Utilites/color_style.dart';
import 'package:financ_app/widgets/transaction_card.dart';
import 'package:flutter/material.dart';

class Transaction extends StatefulWidget {
  const Transaction({super.key});

  @override
  State<Transaction> createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
  String selected = "This Week";

  final List<String> filters = ["Week", "Month", "Categories"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Transaction', style: AppTextStyles.Heading),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) => AddTransaction()),
                          );
                        },
                        child: Icon(
                          Icons.tune_rounded,
                          color: Colors.grey,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: const Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  child: Center(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search',
                        prefixIcon: Icon(
                          Icons.search,
                          color: Appcolor.secoundary,
                        ),
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 18),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Wrap(
                      spacing: 10,
                      children: ["this Week", "this Month", "Categories"].map((
                        filter,
                      ) {
                        final isSelected = selected == filter;
                        return ChoiceChip(
                          label: Text(filter),
                          selected: isSelected,
                          selectedColor: Colors.blue,
                          labelStyle: TextStyle(
                            color: isSelected ? Colors.white : Colors.black,
                          ),
                          onSelected: (_) {
                            setState(() {
                              selected = filter;
                            });
                          },
                        );
                      }).toList(),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Today",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                TransactionCard(
                  icon: Icons.shopping_bag_outlined,
                  iconBgColor: Color(0xffEEF4FF),
                  iconColor: Colors.blue,
                  title: "Whole Foods Market",
                  category: "Groceries",
                  time: "10:45 AM",
                  amount: "-\$84.20",
                  amountColor: Colors.red,
                ),

                TransactionCard(
                  icon: Icons.account_balance_wallet_outlined,
                  iconBgColor: Color(0xffE8FFF2),
                  iconColor: Colors.green,
                  title: "Salary Deposit",
                  category: "Income",
                  time: "09:00 AM",
                  amount: "+\$4,250.00",
                  amountColor: Colors.green,
                ),

                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Yestarday",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 10),
                TransactionCard(
                  icon: Icons.coffee_maker_outlined,
                  iconBgColor: Color(0xffEEF4FF),
                  iconColor: Colors.blue,
                  title: "Blue bottle Coffee",
                  category: "Food & Drinks",
                  time: "11:45 AM",
                  amount: "-\$5.50",
                  amountColor: Colors.red,
                ),
                TransactionCard(
                  icon: Icons.car_rental_outlined,
                  iconBgColor: Color(0xffEEF4FF),
                  iconColor: Colors.blue,
                  title: "Uber Trip ",
                  category: "Transport",
                  time: "12:00 AM",
                  amount: "-\$20.20",
                  amountColor: Colors.red,
                ),
                TransactionCard(
                  icon: Icons.shopping_bag_outlined,
                  iconBgColor: Color(0xffEEF4FF),
                  iconColor: Colors.blue,
                  title: "Netflix Subscription",
                  category: "Entertainmen",
                  time: "10:45 AM",
                  amount: "-\$4.20",
                  amountColor: Colors.red,
                ),

                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Oct 24, 2023",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                TransactionCard(
                  icon: Icons.shopping_bag_outlined,
                  iconBgColor: Color(0xffEEF4FF),
                  iconColor: Colors.blue,
                  title: "Stock Dividend",
                  category: "Investement",
                  time: "10:45 AM",
                  amount: "+124.50",
                  amountColor: Colors.red,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
