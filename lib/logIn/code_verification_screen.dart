import 'package:flutter/material.dart';
import 'package:more_widget/logIn/change_password_screen.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class CodeVerifyScreen extends StatefulWidget {
  const CodeVerifyScreen({Key? key}) : super(key: key);

  @override
  State<CodeVerifyScreen> createState() => _CodeVerifyScreenState();
}

class _CodeVerifyScreenState extends State<CodeVerifyScreen> {
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
          margin: const EdgeInsets.only(top: 20,bottom: 120,left: 20,right: 20),
          width: 243,
          height: 73,
          child: const Text(
            'Forgot\nPassword?',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.w500),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 20),
          child: Container(
            width : double.infinity,
            margin: const EdgeInsets.only(left: 30,right: 30),
            child: PinCodeTextField(
              length: 4,
               pinTheme:  PinTheme(
                   borderRadius: BorderRadius.circular(20),
                    fieldHeight: 40,
                    fieldWidth: 60,
                    errorBorderColor: Colors.black,
               ),
              onChanged: (String value) {

              },
              appContext: context)
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 20,left: 20,right: 20),
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const ChangePassword()));
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
