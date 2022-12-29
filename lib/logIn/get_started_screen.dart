import 'package:flutter/material.dart';
import 'package:more_widget/logIn/home_page.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return ListView(children: [
      Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Container(
              margin: EdgeInsets.all(20),
              child: const Text(
                'Password\nchanged',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 32),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 60),
              width: 285,
              height: 315,
              child: Image.asset('assets/images/4.png'),
            ),
            Container(
                transformAlignment: Alignment.bottomCenter,
                width: 190,
                height: 50,
                margin:
                    EdgeInsets.only(right: 20, left: 20, top: 200, bottom: 50),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(28),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => HomePage(email: '', password: '',))
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amber),
                      child: const Text(
                        'Get Started',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      )
                  ),
                ))
          ]),
    ]);
  }
}
