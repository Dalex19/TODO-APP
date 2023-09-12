import 'package:flutter/material.dart';

class TodoView extends StatelessWidget {
  const TodoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Scaffold(
            backgroundColor: Colors.amber,
            appBar: AppBar(
              title: const Text("vista de prueba"),
              backgroundColor: Colors.transparent,
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(
                      "Crea y Ve... \n Tus tareas",
                      style: TextStyle(fontSize: 40),
                      textAlign: TextAlign.center,
                    ),
                    const Body()
                  ]),
            )),
        onWillPop: () async {
          Navigator.pushNamed(context, "app");
          return true;
        });
  }
}

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final TextEditingController _titleNameController = TextEditingController();
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.20,
      color: Colors.blue,
      child: Form(
        child: Column(
          children: [
            TextFormField(
              controller: _titleNameController,
              decoration: const InputDecoration(
                hintText: "Titulo de tu tarea",
                labelText: "Hacer la compra",
              ),
            ),
            Switch(
              value: _value,
              onChanged: (bool newValue) {
                setState(() {
                  _value = newValue;
                });
              },
            ),
            ElevatedButton(
              onPressed: () {
                print(_titleNameController.text);
              },
              child: const Text("Agregar tarea"),
            ),
          ],
        ),
      ),
    );
  }
}
