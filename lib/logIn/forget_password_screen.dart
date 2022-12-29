
import 'package:flutter/material.dart';
import 'package:more_widget/logIn/code_verification_screen.dart';
import 'package:more_widget/logIn/login_screen.dart';

class Login4 extends StatelessWidget {
  const Login4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return ListView(
      children: [
        Container(
          margin: EdgeInsets.all(20),
          width: 243,
          height: 73,
          child: const Text(
            'Forgot\nPassword?',
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
                    margin: EdgeInsets.only(top: 20, bottom: 20),
                    decoration: BoxDecoration(),
                    child:const  TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          labelText: ('Email'),
                          hintText: 'Email',
                          suffixIcon: Icon(
                            Icons.email,
                            color: Colors.black,
                          )
                      ),
                    ),
                  ),
                  const  Text(
                    'Please provide your email to reset your password, please don’t share any data to other people.',
                    style: TextStyle(
                      fontSize: 12,fontWeight: FontWeight.w300
                    ),
                  ),
                  Container(
                    margin:const  EdgeInsets.only(top: 20),
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=> const CodeVerifyScreen())
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber,
                      ),
                      child: const  Text(
                        'Reset Password',
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
                    children: [ const
                      Text('Remember now?' ,
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      TextButton(onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context)=> Login2()));
                      }, child:const  Text(
                        'Login here',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                        ),
                      )
                      )
                    ],
                  ),
                ]
            )
        ),
        Container(
          margin: const EdgeInsets.only(top: 300),
          child: const Align(
            alignment: Alignment.bottomCenter,
            child: Text('Need Help!',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16
            ),),
          ),
        )
      ],
    );
  }
}
