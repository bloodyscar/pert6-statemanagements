import 'package:flutter/material.dart';
import 'package:pertemuan_6/provider/counter_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultiProvider(providers: [
        ChangeNotifierProvider(
          create: (context) => CounterProvider(),
        )
      ], child: HomePage()),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    print("render widget");
    return Scaffold(
      body: Center(
        child: Consumer<CounterProvider>(
          builder: (context, value, child) =>
              Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "${value.counter}",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  value.increment();
                },
                child: Text("Tambah"))
          ]),
        ),
      ),
    );
  }
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MultiProvider(
//         providers: [
//           ChangeNotifierProvider(
//             create: (context) => CounterProvider(),
//           )
//         ],
//         child: HomePage(),
//       ),
//     );
//   }
// }

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     print("Render Widget");
//     return Scaffold(
//       body: Center(
//         child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
//           Consumer<CounterProvider>(
//             builder: (context, value, child) => Text("${value.counter}"),
//           ),
//           Consumer<CounterProvider>(
//             builder: (context, value, child) => ElevatedButton(
//                 onPressed: () {
//                   value.increment();
//                 },
//                 child: Text("Tambah")),
//           )
//         ]),
//       ),
//     );
//   }
// }
