import 'package:flutter/material.dart';

class Start extends StatelessWidget {
  const Start({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/start.jpg'),
                fit: BoxFit.cover,
              )),
          ),

          Expanded(child: Align(
            alignment: FractionalOffset.bottomCenter,
            child: ElevatedButton(onPressed: () => Navigator.pushNamed(context, '/home'),
             child: Text('Get Started', style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold

             ),
             ),
             style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 242, 117, 1),
             ),
             ),
          ))        




        ],
      ),
    );
  }
}
