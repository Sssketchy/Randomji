// ignore_for_file: unnecessary_import, unused_import

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:second_app/dice_roller.dart';
// import 'package:second_app/styled_text.dart';

var endAlign = Alignment.bottomRight;
var beginAlign = Alignment.topLeft;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  const GradientContainer.sky({super.key})
    : color1 = Colors.blue,
      color2 = Colors.pink;

  final Color color1;
  final Color color2;

  @override
  Widget build(ctx) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: beginAlign,
          end: endAlign,
        ),
      ),
      child: Center(child: DiceRoller()),
    );
  }
}

// class GradientContainer extends StatelessWidget {
//   const GradientContainer(this.colors, {super.key});

//   final List<Color> colors;

//   @override
//   Widget build(ctx) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: colors,
//           begin: beginAlign,
//           end: endAlign,
//         ),
//       ),
//       child: Center(child: StyledText("Wassup ?")),
//     );
//   }
// }
