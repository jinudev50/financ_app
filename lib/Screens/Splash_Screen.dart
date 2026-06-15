import 'package:financ_app/Screens/on_boardiing_1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      // Navigate to the next screen after the splash screen duration
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => on_boarding_1()),
      ); // Replace with your home screen route
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
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
                        image: AssetImage(
                          'assets/images/fiscal_harmony_logo.png',
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
// child: Image(
        //   image: AssetImage('assets/images/fiscal_harmony_logo.png'),
        // ),