import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:more_widget/logIn/login_screen.dart';


class Login1 extends StatefulWidget {
  const Login1({Key? key}) : super(key: key);

  @override
  State<Login1> createState() => _Login1State();
}

class _Login1State extends State<Login1> {
  @override
  void initState() {
    super.initState();

    Future.delayed( const Duration(seconds: 2)).then((value){
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) =>  Login2()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
    );
  }

  Widget _buildBody(){
    return Container(
      color: Colors.amber,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin:const  EdgeInsets.all(15),
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.black,
              ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child:  Image.asset('assets/images/Logo.png'),
                ),
            ),
            const Text('Foodes App',style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
            ),
            const SizedBox(height: 30),
            const  SpinKitFadingCircle(
              color: Colors.black,
                size: 50,
            )
          ],
        )
      ),
    );
  }
}
