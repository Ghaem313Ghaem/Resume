import 'package:flutter/material.dart';

class MainCalculationScreen extends StatefulWidget {
  const MainCalculationScreen({super.key});

  @override
  State<MainCalculationScreen> createState() => _MainCalculationScreenState();
}

const List<String> mainTypeOfUnits = <String>[
  "Length",
  "Area",
  "Volume",
  "Mass",
  "Temperature"
];

class _MainCalculationScreenState extends State<MainCalculationScreen> {
  String currentMainTypeValue = mainTypeOfUnits.first;

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
                    letterSpacing: 40),
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
                        letterSpacing: 40),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Type drop down selection
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width:
                    MediaQuery.of(context).orientation == Orientation.portrait
                        ? MediaQuery.of(context).size.width * 0.07
                        : MediaQuery.of(context).size.height * 0.07,
              ),
              Text(
                "Type: ",
                style: TextStyle(
                  fontFamily: "LilitaOne",
                  fontSize:
                      MediaQuery.of(context).orientation == Orientation.portrait
                          ? MediaQuery.of(context).size.width * 0.07
                          : MediaQuery.of(context).size.height * 0.07,
                ),
              ),
              SizedBox(
                width:
                    MediaQuery.of(context).orientation == Orientation.portrait
                        ? MediaQuery.of(context).size.width * 0.05
                        : MediaQuery.of(context).size.height * 0.05,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.5,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                        MediaQuery.of(context).size.width),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(10, 0, 0, 0),
                        offset: Offset(0, -10),
                        blurRadius: 10000,
                        spreadRadius: 2,
                        blurStyle: BlurStyle.inner,
                      ),
                      BoxShadow(
                        color: Color.fromARGB(10, 0, 0, 0),
                        offset: Offset(0, 0),
                        blurRadius: 10000,
                        spreadRadius: 10,
                        blurStyle: BlurStyle.inner,
                      ),
                    ]),
                child: DropdownButtonFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    focusedErrorBorder: InputBorder.none,
                    contentPadding: EdgeInsets.only(
                      top: MediaQuery.of(context).orientation == Orientation.portrait
                          ? MediaQuery.of(context).size.width * 0.04
                          : MediaQuery.of(context).size.height * 0.04,
                      bottom: MediaQuery.of(context).orientation == Orientation.portrait
                          ? MediaQuery.of(context).size.width * 0.03
                          : MediaQuery.of(context).size.height * 0.03,
                    ),
                  ),
                  isDense: true,
                  iconSize: MediaQuery.of(context).orientation == Orientation.portrait
                          ? MediaQuery.of(context).size.width * 0.05
                          : MediaQuery.of(context).size.height * 0.05,
                  iconEnabledColor: const Color.fromARGB(255, 255, 191, 0),
                  itemHeight:
                      MediaQuery.of(context).orientation == Orientation.portrait
                          ? MediaQuery.of(context).size.width * 0.1
                          : MediaQuery.of(context).size.height * 0.1,
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? MediaQuery.of(context).size.width * 0.04
                        : MediaQuery.of(context).size.height * 0.04,
                    right: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? MediaQuery.of(context).size.width * 0.04
                        : MediaQuery.of(context).size.height * 0.04,
                  ),
                  // underline: Container(
                  //   height: 2,
                  //   color: Colors.transparent,
                  // ),
                  style: TextStyle(
                    fontFamily: "SegoeUI",
                    color: Colors.black,
                    fontSize: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? MediaQuery.of(context).size.width * 0.05
                        : MediaQuery.of(context).size.height * 0.05,
                    height: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? MediaQuery.of(context).size.width * 0.001
                        : MediaQuery.of(context).size.height * 0.001,
                  ),
                  isExpanded: true,
                  focusColor: const Color.fromARGB(255, 255, 191, 0),
                  value: currentMainTypeValue,
                  dropdownColor: Colors.white,
                  borderRadius:
                      MediaQuery.of(context).orientation == Orientation.portrait
                          ? BorderRadius.circular(
                              MediaQuery.of(context).size.width * 0.07)
                          : BorderRadius.circular(
                              MediaQuery.of(context).size.width * 0.07),
                  items: mainTypeOfUnits
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? value) {
                    // This is called when the user selects an item.
                    setState(() {
                      currentMainTypeValue = value!;
                    });
                  },
                ),
              ),
              SizedBox(
                width:
                    MediaQuery.of(context).orientation == Orientation.portrait
                        ? MediaQuery.of(context).size.width * 0.07
                        : MediaQuery.of(context).size.height * 0.07,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
