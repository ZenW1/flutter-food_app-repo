import 'package:flutter/material.dart';
import 'package:more_widget/logIn/change_password_screen.dart';

class CodeVerifyScreen extends StatelessWidget {
  const CodeVerifyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context){
    return ListView(
      children: [
        Container(
          margin: EdgeInsets.only(top: 20,bottom: 120,left: 20,right: 20),
          width: 243,
          height: 73,
          child: const Text(
            'Forgot\nPassword?',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.w500),
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center ,
            children: [
             Container(
               width: 60,
               margin: EdgeInsets.only(left:30),
               child: const TextField(
                  textAlign: TextAlign.center,
                 keyboardType: TextInputType.number,
                 maxLength: 1,
                  style: TextStyle(
                    fontSize: 32,
                  ),
                  decoration: InputDecoration(
                 ),
               ),
             ),
              Container(
                margin: EdgeInsets.only(left:16),
                width: 60,
                child: const TextField(
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  maxLength: 1,
                  style: TextStyle(
                    fontSize: 32,
                  ),
                  decoration: InputDecoration(
                  ),
                ),
              ),
              Container(
                width: 60,
                margin: EdgeInsets.only(left:16,right: 16),
                child: const TextField(
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  maxLength: 1,
                  style: TextStyle(
                    fontSize: 32,
                  ),
                  decoration: InputDecoration(
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 30),
                width: 60,
                child: const TextField(
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  maxLength: 1,
                  style: TextStyle(
                    fontSize: 32,
                  ),
                  decoration: InputDecoration(
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20,left: 20,right: 20),
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ChangePassword()));
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.amber,
            ),
            child: const Text(
              'Verification',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Didn\'t received code?',
              style: TextStyle(
                fontWeight: FontWeight.w300,
              ),
            ),
            TextButton(onPressed: (){

            },
                child: TextButton(
              child: const Text('Re-send(32)',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  )),
              onPressed: (){
                   }
               )
            )
          ],
        )
      ],
    );
  }
}
