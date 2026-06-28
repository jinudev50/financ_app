import 'package:financ_app/Bottom_nav/Bottom_Nav.dart';
import 'package:financ_app/Screens/Login.dart';
import 'package:flutter/material.dart';
import '../Utilites/SignUp_textfield.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 34),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Material(
                    elevation: 3,
                    child: Center(
                      child: Image(
                        image: AssetImage('assets/images/rigester.png'),
                        height: 80,
                        width: 100,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Create Account',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'Start your Journey to financial freedom today',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 10),

              Column(
                children: [
                  const CustomTextField(
                    label: "Email Address",
                    hint: "name@example.com",
                    icon: Icons.email_outlined,
                  ),

                  const CustomTextField(
                    label: "Full Name",
                    hint: "Enter your full name",
                    icon: Icons.person_outline,
                  ),

                  const CustomTextField(
                    label: "Password",
                    hint: "Enter password",
                    icon: Icons.lock_outline,
                  ),

                  const CustomTextField(
                    label: "Confirm Password",
                    hint: "Confirm password",
                    icon: Icons.lock_outline,
                  ),
                  SizedBox(height: 20),

                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: TextButton(
                      onPressed: () {
                        // Navigate to the next screen when "Next" is pressed
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const BottomNav(),
                          ),
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Next',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          const SizedBox(width: 8),
                          Icon(Icons.arrow_forward, color: Colors.white),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 8),
                  const Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Divider(height: 2),
                  ),
                  const SizedBox(height: 10),
                  const Center(child: Text('OR Continue With')),
                  const SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.shade300),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/images/google1.jpg',
                                    height: 20,
                                  ),
                                  const SizedBox(width: 8),
                                  const Text('Google'),
                                ],
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(width: 10),

                        Expanded(
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.shade300),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.apple, size: 20),
                                  SizedBox(width: 8),
                                  Text('Apple'),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already have an account?',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(width: 3),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (_) => Login()),
                            );
                          },
                          child: Text(
                            'Login  ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Container(
              //     height: MediaQuery.of(context).size.height * 0.6,
              //     width: MediaQuery.of(context).size.width,
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(10),
              //       border: Border.all(color: Colors.white70),
              //     ),
              //     child: Padding(
              //       padding: const EdgeInsets.symmetric(horizontal: 20),
              //       child: Column(
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         children: [
              //           const Text(
              //             'Email Address',
              //             style: TextStyle(
              //               fontSize: 14,
              //               fontWeight: FontWeight.w600,
              //             ),
              //           ),
              //           const SizedBox(height: 8),

              //           TextFormField(
              //             decoration: InputDecoration(
              //               hintText: 'name@example.com',
              //               prefixIcon: const Icon(Icons.email_outlined),
              //               border: OutlineInputBorder(
              //                 borderRadius: BorderRadius.circular(8),
              //               ),
              //             ),
              //           ),
              //           SizedBox(height: 10),
              //           Column(
              //             crossAxisAlignment: CrossAxisAlignment.start,
              //             children: [
              //               const Text(
              //                 'Email Address',
              //                 style: TextStyle(
              //                   fontSize: 14,
              //                   fontWeight: FontWeight.w600,
              //                 ),
              //               ),
              //               const SizedBox(height: 8),

              //               TextFormField(
              //                 decoration: InputDecoration(
              //                   hintText: 'name@example.com',
              //                   prefixIcon: const Icon(Icons.email_outlined),
              //                   border: OutlineInputBorder(
              //                     borderRadius: BorderRadius.circular(8),
              //                   ),
              //                 ),
              //               ),
              //             ],
              //           ),
              //           Column(
              //             crossAxisAlignment: CrossAxisAlignment.start,
              //             children: [
              //               const Text(
              //                 'Email Address',
              //                 style: TextStyle(
              //                   fontSize: 14,
              //                   fontWeight: FontWeight.w600,
              //                 ),
              //               ),
              //               const SizedBox(height: 8),

              //               TextFormField(
              //                 decoration: InputDecoration(
              //                   hintText: 'name@example.com',
              //                   prefixIcon: const Icon(Icons.email_outlined),
              //                   border: OutlineInputBorder(
              //                     borderRadius: BorderRadius.circular(8),
              //                   ),
              //                 ),
              //               ),
              //             ],
              //           ),
              //           Column(
              //             crossAxisAlignment: CrossAxisAlignment.start,
              //             children: [
              //               const Text(
              //                 'Email Address',
              //                 style: TextStyle(
              //                   fontSize: 14,
              //                   fontWeight: FontWeight.w600,
              //                 ),
              //               ),
              //               const SizedBox(height: 8),

              //               TextFormField(
              //                 decoration: InputDecoration(
              //                   hintText: 'name@example.com',
              //                   prefixIcon: const Icon(Icons.email_outlined),
              //                   border: OutlineInputBorder(
              //                     borderRadius: BorderRadius.circular(8),
              //                   ),
              //                 ),
              //               ),
              //             ],
              //           ),
              //         ],
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
