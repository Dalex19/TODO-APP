import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mi_primera_aplicacion/widgets/btn.dart';

class SignUpView extends StatelessWidget {
  //const SignUpView({super.key});
  final formKey = GlobalKey<FormState>();
  final firstNameCtrl = TextEditingController();
  final lastNameCtrl = TextEditingController();
  final emailCtrl = TextEditingController();
  final passwordCtrl = TextEditingController();


  @override
  Widget build(BuildContext context) {
    Color bgColor = Color(0xFFfaedcd);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: bgColor,
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        HeaderLogin(),
                        BodyLogin(
                            formKey: formKey,
                            firstNameCtrl: firstNameCtrl,
                            lastNameCtrl: lastNameCtrl,
                            emailCtrl: emailCtrl,
                            passwordCtrl: passwordCtrl
                        )
                      ],
                    ),
                  ),
                  Footer(formKey)

                ],
              ),
            )


          ],
        ),
        onWillPop: () async {
          Navigator.pushReplacementNamed(context, 'initial-route');
          return true;
        },
      ),

    );
  }
}

class HeaderLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.10,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          Text('Sing Up',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              wordSpacing: 5,
              letterSpacing: 1.3
            ),
            textAlign: TextAlign.center,
          ),
          Text('Create an account, Its free',
            style: TextStyle(fontSize: 17, color: Colors.grey),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }

}

class BodyLogin extends StatefulWidget {
  GlobalKey formKey = GlobalKey<FormState>();
  TextEditingController firstNameCtrl = TextEditingController();
  TextEditingController lastNameCtrl = TextEditingController();
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController passwordCtrl = TextEditingController();

  BodyLogin({
    required this.formKey, required this.firstNameCtrl,
    required this.lastNameCtrl, required this.emailCtrl, required this.passwordCtrl
  });

  @override
  State<BodyLogin> createState() => _BodyLoginState();
}

class _BodyLoginState extends State<BodyLogin> {

  bool obscure = true;
  @override
  Widget build(BuildContext context) {
      return Container(
        height: MediaQuery.of(context).size.height * 0.45,
        child: Form(
          key: widget.formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextFormField(
                key: Key('firstNameField'),
                controller: widget.firstNameCtrl,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  hintText: '',
                  label: Text('First Name', style: TextStyle(color: Colors.black)),
                ),
              ),
              TextFormField(
                key: Key('lastNameField'),
                controller: widget.lastNameCtrl,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  hintText: '',
                  label: Text('Last Name'),
                ),
              ),
              TextFormField(
                key: Key('emailField'),
                controller: widget.emailCtrl,
                maxLength: 15,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                    hintText: '',
                    label: Text('Email')
                ),
              ),
              TextFormField(
                key: const Key('passwordField'),
                controller: widget.passwordCtrl,
                maxLength: 10,
                obscureText: obscure,
                decoration: InputDecoration(
                    hintText: '',
                    label: Text('Password'),
                    suffixIcon: IconButton(
                        icon: Icon(Icons.visibility_rounded),
                        onPressed: () {
                          obscure = !obscure;
                          setState(() {});
                        },

                    ),
                ),
              )
            ],
          ),
        )
      );
  }
}

class Footer extends StatelessWidget {
  GlobalKey formKey = GlobalKey<FormState>();
  Footer(this.formKey);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.20,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Btn(nameBtn: 'Sign Up',
              paddingBtn: const EdgeInsets.fromLTRB(95, 10, 95, 15),
              colorBtn: Colors.lightGreen,
              action: () => Navigator.pushReplacementNamed(context, 'app')
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(child:  Text('Already have an account?', style: TextStyle(color: Colors.grey),)),
              SizedBox(
                  child: TextButton(
                     child: const Text('Login',
                    style: TextStyle(fontWeight: FontWeight.bold,
                        color: Colors.lightGreen
                    ),
                     textAlign: TextAlign.left,
                     ),
                onPressed: () => Navigator.pushReplacementNamed(context, 'log-in'),
                )
              )
            ],
          )
        ],
      ),
    );
  }

}
