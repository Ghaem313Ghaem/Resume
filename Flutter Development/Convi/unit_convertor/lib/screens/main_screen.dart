import 'package:flutter/material.dart';

class MainCalculationScreen extends StatefulWidget {
  const MainCalculationScreen({super.key});

  @override
  State<MainCalculationScreen> createState() => _MainCalculationScreenState();
}

class _MainCalculationScreenState extends State<MainCalculationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(
            (MediaQuery.of(context).orientation == Orientation.portrait)
                ? MediaQuery.of(context).size.width / 5
                : MediaQuery.of(context).size.height / 2),
        child: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 191, 0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft:
                  (MediaQuery.of(context).orientation == Orientation.portrait)
                      ? Radius.circular(MediaQuery.of(context).size.width / 5)
                      : Radius.circular(MediaQuery.of(context).size.height / 2),
              bottomRight:
                  (MediaQuery.of(context).orientation == Orientation.portrait)
                      ? Radius.circular(MediaQuery.of(context).size.width / 5)
                      : Radius.circular(MediaQuery.of(context).size.height / 2),
            ),
          ),
          centerTitle: true,
          toolbarHeight:
              (MediaQuery.of(context).orientation == Orientation.portrait)
                  ? MediaQuery.of(context).size.width / 5
                  : MediaQuery.of(context).size.height / 2,
          title: Transform.translate(
            offset: const Offset(0, 0.2),
            child: RichText(
              text: TextSpan(
                text: "Conv",
                style: TextStyle(
                  fontFamily: "LilitaOne",
                  color: Colors.black,
                  fontSize: (MediaQuery.of(context).orientation ==
                          Orientation.portrait)
                      ? MediaQuery.of(context).size.width / 10
                      : MediaQuery.of(context).size.height / 2,
                  letterSpacing: 40
                ),
                children: [
                  TextSpan(
                    text: "i",
                    style: TextStyle(
                      fontFamily: "LilitaOne",
                      color: Colors.white,
                      fontSize: (MediaQuery.of(context).orientation ==
                              Orientation.portrait)
                          ? MediaQuery.of(context).size.width / 10
                          : MediaQuery.of(context).size.height / 2,
                      letterSpacing: 40
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
