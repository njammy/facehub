import 'package:facehub/widget/facehubbutton.dart';
import 'package:facehub/widget/hubcard.dart';
import 'package:flutter/material.dart';

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
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE0D6D4),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: double.maxFinite,
          color: const Color(0xffE0D6D4),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const HubFace(profilPath: "images/avatar.png"),
              Container(
                margin: const EdgeInsets.only(
                    top: 40, bottom: 40, left: 25, right: 25),
                child: Column(
                  children: const [
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                    top: 0, bottom: 30, left: 15, right: 15),
                child: Column(
                  children: [
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 15, color: Colors.black.withOpacity(.6)),
                    )
                  ],
                ),
              ),
              const FaceHubButton()
            ],
          ),
        ),
      ),
    );
  }
}
