import 'package:financ_app/Utilites/app_text_styles.dart';
import 'package:financ_app/Utilites/color_style.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class Analystics extends StatefulWidget {
  const Analystics({super.key});

  @override
  State<Analystics> createState() => _AnalyticsScreenState();
}

class _AnalyticsScreenState extends State<Analystics> {
  bool isMonthly = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F6FA),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),

        title: Row(
          children: [
            const Text(
              "Analytics",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),

            const SizedBox(width: 10),

            Container(
              height: 32,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isMonthly = true;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: isMonthly ? Colors.blue : Colors.transparent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        "Monthly",
                        style: TextStyle(
                          color: isMonthly ? Colors.white : Colors.black,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isMonthly = false;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: !isMonthly ? Colors.blue : Colors.transparent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        "Yearly",
                        style: TextStyle(
                          color: !isMonthly ? Colors.white : Colors.black,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),

        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(15),
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Spending BreakDown',
                          style: AppTextStyles.SubHeading,
                        ),
                        Text(
                          'Oct  2026',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Appcolor.secoundary,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),

                    SizedBox(
                      height: 150,
                      // width: 220,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          PieChart(
                            PieChartData(
                              centerSpaceRadius: 60,
                              sectionsSpace: 0,
                              sections: [
                                PieChartSectionData(
                                  value: 45,
                                  color: Colors.blue,
                                  radius: 18,
                                  showTitle: false,
                                ),
                                PieChartSectionData(
                                  value: 25,
                                  color: Colors.green,
                                  radius: 18,
                                  showTitle: false,
                                ),
                                PieChartSectionData(
                                  value: 20,
                                  color: Colors.brown,
                                  radius: 18,
                                  showTitle: false,
                                ),
                                PieChartSectionData(
                                  value: 10,
                                  color: Colors.red,
                                  radius: 18,
                                  showTitle: false,
                                ),
                              ],
                            ),
                          ),
                          const Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Total",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                "\$4,250",
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 20),

                    _legendTile(
                      color: Colors.blue,
                      title: "Housing",
                      percent: "45%",
                    ),

                    _legendTile(
                      color: Colors.green,
                      title: "Grocery",
                      percent: "25%",
                    ),

                    _legendTile(
                      color: Colors.brown,
                      title: "Dining",
                      percent: "20%",
                    ),
                    _legendTile(
                      color: Colors.red,
                      title: "Others",
                      percent: "10%",
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(15),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Income vs Expenses",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 20),

                    SizedBox(
                      height: 220,
                      child: BarChart(
                        BarChartData(
                          borderData: FlBorderData(show: false),
                          gridData: FlGridData(show: false),

                          titlesData: FlTitlesData(
                            topTitles: AxisTitles(
                              sideTitles: SideTitles(showTitles: false),
                            ),
                            rightTitles: AxisTitles(
                              sideTitles: SideTitles(showTitles: false),
                            ),
                            leftTitles: AxisTitles(
                              sideTitles: SideTitles(showTitles: false),
                            ),
                            bottomTitles: AxisTitles(
                              sideTitles: SideTitles(
                                showTitles: true,
                                getTitlesWidget: (value, meta) {
                                  const months = ["Aug", "Sep", "Oct", "Nov"];

                                  return Text(months[value.toInt()]);
                                },
                              ),
                            ),
                          ),

                          barGroups: [
                            _group(0, 8, 4),
                            _group(1, 9, 5),
                            _group(2, 7.5, 6),
                            _group(3, 8.5, 3.5),
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(height: 10),

                    const Row(
                      children: [
                        Icon(Icons.circle, size: 10, color: Colors.blue),

                        SizedBox(width: 5),

                        Text("Income"),

                        SizedBox(width: 20),

                        Icon(Icons.circle, size: 10, color: Colors.green),

                        SizedBox(width: 5),

                        Text("Expense"),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(15),
                padding: const EdgeInsets.all(16),

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Weekly Spending",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        Text(
                          "↘ 8% less than last week",
                          style: TextStyle(color: Colors.green, fontSize: 12),
                        ),
                      ],
                    ),

                    const SizedBox(height: 20),

                    SizedBox(
                      height: 220,
                      child: LineChart(
                        LineChartData(
                          borderData: FlBorderData(show: false),

                          gridData: FlGridData(show: true),

                          titlesData: FlTitlesData(
                            topTitles: AxisTitles(
                              sideTitles: SideTitles(showTitles: false),
                            ),

                            rightTitles: AxisTitles(
                              sideTitles: SideTitles(showTitles: false),
                            ),

                            leftTitles: AxisTitles(
                              sideTitles: SideTitles(showTitles: false),
                            ),

                            bottomTitles: AxisTitles(
                              sideTitles: SideTitles(
                                showTitles: true,
                                getTitlesWidget: (value, meta) {
                                  const days = [
                                    "Mon",
                                    "Tue",
                                    "Wed",
                                    "Thu",
                                    "Fri",
                                    "Sat",
                                    "Sun",
                                  ];

                                  return Text(days[value.toInt()]);
                                },
                              ),
                            ),
                          ),

                          lineBarsData: [
                            LineChartBarData(
                              isCurved: false,

                              color: Colors.blue,

                              barWidth: 3,

                              dotData: FlDotData(show: true),

                              belowBarData: BarAreaData(
                                show: true,
                                color: Colors.blue.withOpacity(0.1),
                              ),

                              spots: const [
                                FlSpot(0, 2),
                                FlSpot(1, 4),
                                FlSpot(2, 3),
                                FlSpot(3, 7),
                                FlSpot(4, 5.5),
                                FlSpot(5, 8),
                                FlSpot(6, 6.5),
                              ],
                            ),
                          ],
                        ),
                      ),
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

Widget _legendTile({
  required Color color,
  required String title,
  required String percent,
}) {
  return Container(
    margin: const EdgeInsets.only(bottom: 10),
    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 14),
    decoration: BoxDecoration(
      color: const Color(0xffF5F6FA),
      borderRadius: BorderRadius.circular(12),
    ),
    child: Row(
      children: [
        CircleAvatar(radius: 5, backgroundColor: color),

        const SizedBox(width: 12),

        Expanded(child: Text(title)),

        Text(percent, style: const TextStyle(fontWeight: FontWeight.bold)),
      ],
    ),
  );
}

BarChartGroupData _group(int x, double income, double expense) {
  return BarChartGroupData(
    x: x,
    barsSpace: 6,
    barRods: [
      BarChartRodData(
        toY: income,
        color: Colors.blue,
        width: 12,
        borderRadius: BorderRadius.circular(2),
      ),
      BarChartRodData(
        toY: expense,
        color: Colors.green,
        width: 12,
        borderRadius: BorderRadius.circular(2),
      ),
    ],
  );
}
