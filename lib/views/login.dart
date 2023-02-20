import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ingresar', textAlign: TextAlign.center),
      ),
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          SizedBox(
            height: 170,
            width: MediaQuery.of(context).size.width,
            child: Image.asset('assets/login-bg.png',
                fit: BoxFit.cover, alignment: Alignment.center),
          ),
          Align(
            alignment: Alignment.center,
            child: BodyLogin(),
          ),
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
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.50,
        padding: const EdgeInsets.fromLTRB(40, 0, 40, 20),
        //color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  'Login',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                )
              ],
            ),
            TextFormField(
              //controller: ,
              decoration: const InputDecoration(
                  label: Text('Email'),
                  hintText: 'Your email ID'
              ),
            ),
            TextFormField(
              //controller: ,
              obscureText: obscure,
              decoration: InputDecoration(
                  label: const Text('Password'),
                  hintText: 'Password',
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          obscure = !obscure;
                        });
                      }, 
                  icon: const Icon(Icons.remove_red_eye)
                  )
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Text('Forget Password?', style: TextStyle(fontSize: 14))
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 40,
              padding: const EdgeInsets.symmetric(horizontal: 60),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.grey),
              alignment: Alignment.center,
              child: const Text(
                'Login',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ),
            const Text('Dont have an account? Sign Up',
                textAlign: TextAlign.center)
          ],
        ));
  }
}
