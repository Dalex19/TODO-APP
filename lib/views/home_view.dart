import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mi_primera_aplicacion/widgets/btn.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Color bgColor = Color(0xFFf9dcc4);
    return Scaffold(
      backgroundColor: bgColor,
      body: Padding(
        padding:  const EdgeInsets.fromLTRB(20, 40, 20, 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Header(),
            ImagePrincipal(),
            Btns()
          ]
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.red,
      height: MediaQuery.of(context).size.height * 0.15,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children:  const [
          Text('Welcome',
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold
            ),
          ),
          Text('Automatic identify verification \n wich Enable you to verify',
            style: TextStyle(
                color: Colors.grey,
              fontSize: 17
            ),
            textAlign: TextAlign.center,
          )

        ],
      ),
    );
  }
}

class ImagePrincipal extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
   return Container(
     height: MediaQuery.of(context).size.height * 0.35,
     width: MediaQuery.of(context).size.width * 0.80,
     decoration: const BoxDecoration(
       image: DecorationImage(
           image: AssetImage('assets/gameboy.png'),
           fit: BoxFit.cover
       ),
       //color: Colors.purple
     ),
     child: Stack(
       children: [
         Positioned(
             top: 0,
             left: 50,
             child: Container(
               height: 20,
               width: 20,
               decoration: BoxDecoration(
                   border: Border.all(),
                   borderRadius: BorderRadius.circular(100)
               ),
             )
         ),
         Positioned(
             bottom: 35,
             right: 50,
             child: Container(
               height: 17,
               width: 17,
               decoration: BoxDecoration(
                   border: Border.all(width: 1),
                   borderRadius: BorderRadius.circular(20),
                   color: Colors.yellow
               ),
             )
         )
       ],
     ),
   );
  }
}

class Btns extends StatelessWidget {

@override
  Widget build (BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.20,
      width: MediaQuery.of(context).size.width * 0.75,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Btn(
              nameBtn: 'Log In',
              paddingBtn: const EdgeInsets.symmetric(vertical: 13, horizontal: 95),
              colorBtn: Colors.orangeAccent,
              action: () => Navigator.pushReplacementNamed(context, 'log-in')
          ),
          Btn(
              nameBtn: 'Sign up',
              paddingBtn: const EdgeInsets.fromLTRB(95, 10, 95, 15),
              colorBtn: Colors.transparent,
              action: () => Navigator.pushReplacementNamed(context, 'sign-up')
          )
        ],
      ),
    );
  }

}
