import 'package:flutter/material.dart';
import 'package:xyz/styled_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  final Color color1;
  final Color color2;
  final int face;

  const GradientContainer({
    Key? key,
    required this.color1,
    required this.color2,
    required this.face,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/dice-$face.png',
                height: 200,
                width: 200,
              ),
              const SizedBox(height: 20),
              const StyledText('Roll the dice!'),
            ],
          ),
        ),
      ),
    );
  }
}
