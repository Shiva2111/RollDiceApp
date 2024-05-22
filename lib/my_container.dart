import 'package:basic/dice_roller.dart';
import 'package:flutter/material.dart';


const startAlign = Alignment.topLeft;
const endAlign = Alignment.bottomRight;

class MyContainer extends StatelessWidget{
  const MyContainer(this.c1, this.c2,{super.key});

  final Color c1;
  final Color c2;

  

  @override
  Widget build(context){
    return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [c1,c2],
             begin: startAlign,
             end: endAlign),
          ),
          child: Center(
            child: DiceRoller(),
            
        )
        );
  }
}

// class MyContainer extends StatelessWidget{
//  const MyContainer({super.key, required this.colors});

//   final List<Color> colors;

//   @override
//   Widget build(context){
//     return Container(
//           decoration: BoxDecoration(
//             gradient: LinearGradient(colors: colors,
//              begin: startAlign,
//              end: endAlign),
//           ),
//           child: const Center(
//             child: StyledText('HELLO!!!!'),
//         )
//         );
//   }
// }