import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/btn.dart';

class LogInView extends StatelessWidget {
  const LogInView({super.key});

  @override
  Widget build(BuildContext context) {
    //e9edc9
    Color bgColor = Color(0xFFe9edc9);
    return Scaffold(
      backgroundColor: bgColor,
      resizeToAvoidBottomInset: false,
      body: WillPopScope(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.20,
              child: Stack(
                children: [
                  Positioned(
                      right: 0,
                      top: 0,
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.25,
                        width: MediaQuery.of(context).size.width * 0.75,
                        decoration: const BoxDecoration(
                          //color: Colors.red,
                            image: DecorationImage(
                                image: AssetImage('assets/treebranch.png'),
                                fit: BoxFit.cover,
                                alignment: Alignment.topCenter
                            )
                        ),
                      )
                  ),
                  Positioned(
                      top: 20,
                      left: 10,
                      child: IconButton(
                        color: Colors.black,
                        icon: const Icon(Icons.arrow_back),
                        onPressed: () => Navigator.pushReplacementNamed(context, 'initial-route'),
                      )
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.60,
                    width: double.infinity,
                    //color: Colors.deepPurple,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        HeaderLogin(),
                        BodyLogin(),
                      ],
                    ),
                  ),
                  Footer()

                ],
              ),
            )


          ],
        ),
        onWillPop: () async {
          Navigator.pushNamed(context, 'initial-route');
          return true;
        },
      )
    );
  }
}

class HeaderLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.10,
      //color: Colors.orange,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          Text('Log In',
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                wordSpacing: 5,
                letterSpacing: 1.3
            ),
            textAlign: TextAlign.center,
          ),
          Text('Welcome again, Its time for your task',
            style: TextStyle(fontSize: 17, color: Colors.grey),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }

}

class BodyLogin extends StatefulWidget {
  @override
  State<BodyLogin> createState() => _BodyLoginState();
}

class _BodyLoginState extends State<BodyLogin> {
  bool obscure = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.30,
      //color: Colors.blue,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TextFormField(
            decoration: const InputDecoration(
                hintText: '',
                label: Text('Email')
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: '',
                label: Text('Password')
            ),
          )
        ],
      ),
    );
  }
}

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.20,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Btn(nameBtn: 'Log in',
              paddingBtn: const EdgeInsets.fromLTRB(95, 10, 95, 15),
              colorBtn: Colors.lightGreen,
              action: (){}
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(child:  Text('You do not have an account?', style: TextStyle(color: Colors.grey),)),
              SizedBox(
                  child: TextButton(
                    child: const Text('Register Now',
                      style: TextStyle(fontWeight: FontWeight.bold,
                          color: Colors.lightGreen
                      ),
                      textAlign: TextAlign.left,
                    ),
                    onPressed: () => Navigator.pushReplacementNamed(context, 'sign-up'),
                  )
              )
            ],
          )
        ],
      ),
    );
  }

}
