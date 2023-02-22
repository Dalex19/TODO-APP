import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ingresar', textAlign: TextAlign.center),
      ),
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 170,
            width: MediaQuery.of(context).size.width,
            child: Image.asset('assets/login-bg.png',
                fit: BoxFit.cover, alignment: Alignment.center),
          ),
           BodyLogin()
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
        height: MediaQuery.of(context).size.height * 0.60,
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
            MaterialButton(
              onPressed: () {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ),
              disabledColor: Colors.black12,
                color: Colors.deepPurpleAccent,
              elevation: 2.5,
              child: Container(
                width: double.infinity,
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(vertical: 15),
                child:const Text('Login',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400
                  )
                ),
              )
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  child: Text('Dont have an account?'),
                ),
                SizedBox(
                  child: TextButton(
                      onPressed: () => Navigator.pushReplacementNamed(context, 'register'),
                      child: Text(' Sign Up',
                        style: TextStyle(
                            color: Colors.deepPurpleAccent
                        ),
                      ),)
                )
              ],
            )
          ],
        ));
  }
}
