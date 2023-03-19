import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'btn.dart';

class CustomCard2 extends StatelessWidget {
  final  Color bgCard;
  CustomCard2({required this.bgCard});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.70,
      //height: 80,
      color: bgCard,
      child: Stack(
        children: [
          Positioned(
            left: 10,
            top: 0,
            bottom: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Childrens \nEducation',
                  style:
                  TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
                RichText(
                  text: TextSpan(
                      style: DefaultTextStyle.of(context).style,
                      children: [
                        TextSpan(text: 'Target:'),
                        TextSpan(
                            text: '\$24.00',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ]),
                ),
                Btn(nameBtn: 'Donate', paddingBtn: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 18.0), colorBtn: Colors.grey.shade100, action: (){})
              ],
            ),
          ),
          Positioned(
            right: -20,
              child: Image.network('https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fjardinmaravilloso.j.a.pic.centerblog.net%2F5ca01327.png&f=1&nofb=1&ipt=45a7b6f17f0dfe4ac0328551560a8c071debf3d095689e2324648be582cce96f&ipo=images',
                height: 150,
                width: 150,
              )
          )

        ],
      )
    );
  }
}
