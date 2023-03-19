
import 'package:flutter/cupertino.dart';

class CustomCard extends StatelessWidget {
  final String bgImage;
  final String nameCard;
  final double widthCard;
  final Color colorcito;
  const CustomCard({required this.bgImage, required this.nameCard, required this.widthCard, required this.colorcito});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: MediaQuery.of(context).size.width * widthCard,
      decoration:BoxDecoration(
        color: colorcito,
        image: DecorationImage(
          image: AssetImage(bgImage),
          fit: BoxFit.fitWidth
        ),
        borderRadius: BorderRadius.circular(20)
      ),
      child: Stack(
        children: [
          Positioned(
              right: 10,
              top: 5,
              child: Text(nameCard,
                style: const TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 15,
                  letterSpacing: 1.1
                ),
              )
          )
        ],
      )
    );
  }
}
