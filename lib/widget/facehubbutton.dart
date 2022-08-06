import 'package:flutter/material.dart';

class FaceHubButton extends StatelessWidget {
  const FaceHubButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 30, right: 30),
      height: 50,
      decoration: BoxDecoration(
        color: const Color(0xffC8B6B2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text(
                    "LOGIN",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Color(0xff794C42)),
                  ),
                )),
          ),
          Expanded(
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                color: const Color(0xffC8B6B2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Text(
                  "SIGN IN",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Color(0xff794C42)),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
