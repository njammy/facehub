import 'package:flutter/material.dart';

class HubFace extends StatelessWidget {
  const HubFace({Key? key, required this.profilPath}) : super(key: key);
  final String profilPath;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: MediaQuery.of(context).size.height * .5,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[Color(0xff98766E), Color(0xffD8CBC8)],
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.white,
            offset: Offset(0.0, 4.0),
            blurRadius: 15.0,
            spreadRadius: 4.0,
          ),
        ],
      ),
      child: Center(
        child: Image.asset(
          profilPath,
          width: 300,
          height: 300,
        ),
      ),
    );
  }
}
