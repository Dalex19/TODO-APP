import 'package:flutter/material.dart';
import 'package:mi_primera_aplicacion/widgets/custom_card.dart';

import '../widgets/custom_card2.dart';

class AppView extends StatelessWidget {
  const AppView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.pushNamed(context, "add-task"),
          child: Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [Header(), PreBody(), Body()],
          ),
        ));
  }
}

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.20,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                  child: IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {},
              )),
              const Expanded(
                  flex: 2,
                  child: Text(
                    'Hello Welcome! \n Alex Cruz',
                    style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
                    textAlign: TextAlign.center,
                  )),
              SizedBox(
                  child: IconButton(
                icon: const Icon(Icons.three_g_mobiledata),
                onPressed: () {},
              ))
            ],
          ),
          SizedBox(
              height: 45,
              width: MediaQuery.of(context).size.width * 0.90,
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: 'Search Task here...',
                    suffixIcon: Icon(Icons.search),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 2, color: Colors.grey),
                        borderRadius: BorderRadius.circular(25)),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 2, color: Colors.grey),
                        borderRadius: BorderRadius.circular(25))),
              )),
        ],
      ),
    );
  }
}

class PreBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.30,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                child: Text(
                  'Categories',
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                width: 20,
                height: 20,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/menu.png'),
                        fit: BoxFit.cover)),
              )
            ],
          ),
          Container(
              width: double.infinity,
              height: 180,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomCard(
                        bgImage: 'assets/health.png',
                        nameCard: 'Health',
                        widthCard: 0.40,
                        colorcito: Colors.pink.shade200,
                      ),
                      CustomCard(
                        bgImage: 'assets/love.png',
                        nameCard: 'Love',
                        widthCard: 0.50,
                        colorcito: Colors.blue.shade100,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomCard(
                        bgImage: 'assets/work.png',
                        nameCard: 'Work',
                        widthCard: 0.50,
                        colorcito: Colors.purple.shade50,
                      ),
                      CustomCard(
                        bgImage: 'assets/exercise.png',
                        nameCard: 'Exercise',
                        widthCard: 0.40,
                        colorcito: Colors.green.shade200,
                      ),
                    ],
                  )
                ],
              ))
        ],
      ),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.30,
        width: double.infinity,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Explore Camping',
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                ),
                Text(
                  'View all',
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
            Container(
                height: MediaQuery.of(context).size.height * 0.20,
                margin: EdgeInsets.only(top: 20),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CustomCard2(bgCard: Colors.purple.shade200),
                    SizedBox(width: 40),
                    CustomCard2(bgCard: Colors.yellow)
                  ],
                ))
          ],
        ));
  }
}
