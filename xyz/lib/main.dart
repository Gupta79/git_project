import 'dart:math';
import 'package:flutter/material.dart';
import 'package:xyz/gradient_container.dart';
import 'package:xyz/styled_text.dart'; // Ensure this import is correct

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: const Color.fromARGB(255, 76, 15, 182),
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Dice'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int face = 1;
  final Random random = Random();

  void rollDice() {
    setState(() {
      face = random.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GradientContainer(
              color1: Colors.blue,
              color2: Colors.purple,
              face: face,
            ),
            const SizedBox(height: 20),
            const StyledText('Roll the dice!'), // Ensure this line is correct
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: rollDice,
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                textStyle: const TextStyle(fontSize: 20),
              ),
              child: const Text("Roll"),
            ),
          ],
        ),
      ),
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:xyz/image_container.dart'; // Adjust import path as necessary

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue, // Adjust primary color if needed
//       ),
//       home: const MyHomePage(title: 'Dice App'),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   final String title;

//   const MyHomePage({Key? key, required this.title}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(title),
//       ),
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [
//               Colors.blue,
//               Colors.purple,
//             ],
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//             stops: const [0.0, 1.0],
//             tileMode: TileMode.clamp,
//           ),
//         ),
//         child: Center(
//           child: ImageContainer(), // Display the ImageContainer widget
//         ),
//       ),
//     );
//   }
// }
