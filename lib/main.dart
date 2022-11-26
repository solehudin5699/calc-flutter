import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator App',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blueGrey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(3),
              color: Theme.of(context).primaryColor,
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  '0',
                  style: Theme.of(
                    context,
                  ).textTheme.headline3!.copyWith(color: Colors.white),
                ),
              ),
            ),
          ),
          GridView.count(
            padding: const EdgeInsets.all(0),
            crossAxisCount: 4,
            shrinkWrap: true,
            children: [
              CalculatorButton(
                onTap: () {},
                backgroundColor: Theme.of(context).backgroundColor,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: "C",
              ),
              CalculatorButton(
                onTap: () {},
                backgroundColor: Theme.of(context).backgroundColor,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: "+/-",
              ),
              CalculatorButton(
                onTap: () {},
                backgroundColor: Theme.of(context).backgroundColor,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: "%",
              ),
              CalculatorButton.Icon(
                onTap: () {},
                backgroundColor: Theme.of(context).primaryColorDark,
                foregroundColor: Theme.of(context).primaryColorLight,
                text: "Backspace",
                icon: Icons.backspace,
              ),

              // row 2
              CalculatorButton(
                onTap: () {},
                backgroundColor: Theme.of(context).primaryColorLight,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: "7",
              ),
              CalculatorButton(
                onTap: () {},
                backgroundColor: Theme.of(context).primaryColorLight,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: "8",
              ),
              CalculatorButton(
                onTap: () {},
                backgroundColor: Theme.of(context).primaryColorLight,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: "9",
              ),
              CalculatorButton(
                onTap: () {},
                backgroundColor: Theme.of(context).primaryColorDark,
                foregroundColor: Theme.of(context).primaryColorLight,
                text: "/",
              ),

              // row 3
              CalculatorButton(
                onTap: () {},
                backgroundColor: Theme.of(context).primaryColorLight,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: "4",
              ),
              CalculatorButton(
                onTap: () {},
                backgroundColor: Theme.of(context).primaryColorLight,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: "5",
              ),
              CalculatorButton(
                onTap: () {},
                backgroundColor: Theme.of(context).primaryColorLight,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: "6",
              ),
              CalculatorButton(
                onTap: () {},
                backgroundColor: Theme.of(context).primaryColorDark,
                foregroundColor: Theme.of(context).primaryColorLight,
                text: "X",
              ),

              // row 3
              CalculatorButton(
                onTap: () {},
                backgroundColor: Theme.of(context).primaryColorLight,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: "1",
              ),
              CalculatorButton(
                onTap: () {},
                backgroundColor: Theme.of(context).primaryColorLight,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: "2",
              ),
              CalculatorButton(
                onTap: () {},
                backgroundColor: Theme.of(context).primaryColorLight,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: "3",
              ),
              CalculatorButton(
                onTap: () {},
                backgroundColor: Theme.of(context).primaryColorDark,
                foregroundColor: Theme.of(context).primaryColorLight,
                text: "-",
              ),

              // row 4
              CalculatorButton(
                onTap: () {},
                backgroundColor: Theme.of(context).primaryColorLight,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: "0",
              ),
              CalculatorButton(
                onTap: () {},
                backgroundColor: Theme.of(context).primaryColorLight,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: ".",
              ),
              CalculatorButton(
                onTap: () {},
                backgroundColor: Theme.of(context).backgroundColor,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: "=",
              ),
              CalculatorButton(
                onTap: () {},
                backgroundColor: Theme.of(context).primaryColorDark,
                foregroundColor: Theme.of(context).primaryColorLight,
                text: "+",
              ),
            ],
          )
        ],
      ),
    );
  }
}

class CalculatorButton extends StatelessWidget {
  final Color backgroundColor;
  final Color foregroundColor;
  final String text;
  IconData? icon;
  final Function onTap;

  CalculatorButton({
    Key? key,
    required this.backgroundColor,
    required this.foregroundColor,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  CalculatorButton.Icon(
      {Key? key,
      required this.backgroundColor,
      required this.foregroundColor,
      required this.text,
      required this.icon,
      required this.onTap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
      surfaceTintColor: const Color.fromARGB(100, 255, 65, 59),
      child: InkWell(
        onTap: () => onTap(),
        child: Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(100, 255, 65, 59),
          ),
          child: Center(
            child: icon == null
                ? Text(
                    text,
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                          color: foregroundColor,
                        ),
                  )
                : Icon(
                    icon,
                    color: foregroundColor,
                  ),
          ),
        ),
      ),
    );
  }
}
