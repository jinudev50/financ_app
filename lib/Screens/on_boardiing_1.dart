import 'package:flutter/material.dart';

class on_boarding_1 extends StatelessWidget {
  const on_boarding_1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {
              // Navigate to the next screen when "Skip" is pressed
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const on_boarding_1()),
              );
            },
            child: const Text('Skip', style: TextStyle(color: Colors.black)),
          ),
        ],
      ),

      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          height: MediaQuery.of(context).size.height * 0.4,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            color: Colors.white70,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Center(
              child: Image(
                image: AssetImage('assets/images/fiscal_harmony_logo.png'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
