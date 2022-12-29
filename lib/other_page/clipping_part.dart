import 'package:flutter/material.dart';

class Clipper extends StatelessWidget {
  const Clipper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[400],
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 100),
          width: 300,
          height: 150,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                  'https://logos-world.net/wp-content/uploads/2020/04/Barcelona-Logo.png')),
        ),
        Center(
          child: ClipPath(
            clipper: Clipping(),
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white),
                margin: const EdgeInsets.all(15),
                height: 400,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.orange,
                          fontSize: 30,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        // border: Border.all(width: 0.1)
                      ),
                      child: const TextField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email),
                            label: Text('Email')),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(20),
                      child: const TextField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            label: Text('Password'),
                            prefixIcon: Icon(Icons.key),
                            suffixIcon: Icon(Icons.visibility)),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 200),
                      child: const Text(
                        'Forget Password?'
                            ,style: TextStyle(
                        color: Colors.blueAccent,
                      ),
                      ),
                    ),
                    Container(
                      width: 60,
                        height: 60,
                        alignment: Alignment.bottomRight,
                        margin: EdgeInsets.only(top: 30, right: 0,left: 275),
                       child: Align(
                         alignment: Alignment.bottomRight,
                         child: ElevatedButton(
                             onPressed: (){},
                             child: Icon(Icons.arrow_forward_ios),
                         style: ElevatedButton.styleFrom(
                           shape: CircleBorder(),
                           backgroundColor: Colors.orange[500],
                           padding: EdgeInsets.all(20),
                         ),
                         ),
                       ),
                    ),
                  ],
                )
            ),
          ),
        ),
        Row(
          children: [
             Container(
               ),
          ],
        )
      ],
    );
  }
}

class Clipping extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    // path.quadraticBezierTo(size.height/3, 250, -200,300 );
    path.lineTo(0, size.height / 3);
    path.quadraticBezierTo(0, size.height, -10, 310);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
