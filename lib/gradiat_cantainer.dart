import 'package:first_app/dice_roler.dart';
import 'package:flutter/material.dart';

const startAlinment = Alignment.topLeft;
const endAlinment = Alignment.bottomLeft;

class GradiatCantainer extends StatelessWidget {
  GradiatCantainer(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlinment,
          end: endAlinment,
        ),
      ),
      child: Center(
        child: DiceRoler(),
      ),
    );
  }
}

// class GradiatCantainer extends StatelessWidget {
//   const GradiatCantainer({super.key, required this.colors});

//   final List<Color> colors;
//   @override
//   Widget build(context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: colors,
//           begin: startAlinment,
//           end: endAlinment,
//         ),
//       ),
//       child: Center(child: StyleText('hello world')),
//     );
//   }
// }
