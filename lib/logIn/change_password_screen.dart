import 'package:flutter/material.dart';
import 'package:more_widget/logIn/get_started_screen.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return ListView(children: [
      Container(
        margin: EdgeInsets.all(20),
        width: 243,
        height: 73,
        child: const Text(
          'Change\nPassword',
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.w500),
        ),
      ),
      Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 70, bottom: 20),
                  decoration: BoxDecoration(),
                  child: const TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        label: Text('New Password'),
                        suffixIcon: Icon(
                          Icons.visibility_off,
                          color: Colors.black,
                        )),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20, bottom: 20),
                  decoration: BoxDecoration(),
                  child: const TextField(
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: InputDecoration(
                        label: Text('New Password'),
                        suffixIcon: Icon(
                          Icons.visibility_off,
                          color: Colors.black,
                        )
                    ),
                  ),
                ),
                Container(
                  child: const Text(
                    'Please provide your email to reset your password, please don’t share any data to other people.',
                    style: TextStyle(
                      fontSize: 12,
                      leadingDistribution: TextLeadingDistribution.even ,
                      fontWeight: FontWeight.w300
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20, bottom: 20),
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => GetStarted())
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber,
                    ),
                    child:const Text(
                      'Change Password',
                      style:  TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ]
          )
      )
    ]
    );
  }
}
