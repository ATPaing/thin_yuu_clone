import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:thin_yuu/Screens/signinoptions/Signin.dart';



class landingPage extends StatefulWidget {
  const landingPage({super.key});

  @override
  State<landingPage> createState() => _landingPageState();
}

class _landingPageState extends State<landingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Center(
          child: SizedBox(
            height: 400.0,
            width: 400.0,
            child: Image.asset(
              'images/logo.png',
              fit: BoxFit.fitHeight,
              colorBlendMode: BlendMode.darken,
              color: Colors.black54,
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MaterialButton(
              onPressed: () {
                print('Pressed');
              },
              child: Text(
                'Browse',
                style: TextStyle(color: Colors.grey.shade300, fontSize: 20.0),
              ),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    PageTransition(
                        child: SignIn(), type: PageTransitionType.bottomToTop));
              },
              child: Text(
                'Sign in',
                style: TextStyle(color: Colors.grey.shade300, fontSize: 20.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}
