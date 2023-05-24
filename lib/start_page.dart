import 'package:flutter/material.dart';

import 'home_page.dart';

class start_page extends StatelessWidget {
  const start_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // LOGO-START
          Padding(
            padding: const EdgeInsets.only(
                left: 80, right: 80, top: 160, bottom: 40),
            child: Image.asset('assets/images/avocado.png'),
          ),
          const Padding(
            padding: const EdgeInsets.all(24.0),
            child: Text(
              'We deliver groceries at your doorstep',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          // LOGO-END

          // FRESH-İTEMS-START
          Text('Fresh items everday'),
          // FRESH-İTEMS-END
          SizedBox(
            height: 40,
          ),

          GestureDetector(
            onTap: () => Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return homePage();
            })),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child:
                    Text('Get Started', style: TextStyle(color: Colors.white)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
