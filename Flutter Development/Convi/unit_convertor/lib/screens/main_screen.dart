import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../assets/icons/widgets/drop_down_arrow_icons.dart';

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
  "Temperature",
];

const List<String> lengthUnits = <String>[
  "Millimeter (mm)",
  "Centimeter (cm)",
  "Metre (m)",
  "Kilometre (km)",
  "Inch (in)",
  "Foot (ft)",
  "Yard (yd)",
  "Mile (mi)",
  "Nautical mile (NM)",
  "Mil (mil)",
];

const List<String> areaUnits = <String>[
  "Acre (ac)",
  "Ares (a)",
  "Hectare (ha)",
  "Square centimeter (cm2)",
  "Square foot (ft2)",
  "Square inch (in2)",
  "Square Metre (m2)",
];

const List<String> volumeUnits = <String>[
  "UK gallon (UKgal)",
  "US gallon (USgal)",
  "Litre (L)",
  "Milliliter (ml)",
  "Cubic centimeter (cm3)",
  "Cubic Metre (m3)",
  "Cubic inch (in3)",
  "Cubic foot (ft3)",
];

const List<String> massUnits = <String>[
  "Ton (t)",
  "UK ton (t)",
  "US ton (t)",
  "Pound (Ib)",
  "Ounce (oz)",
  "Kilogram (kg)",
  "Gram (g)",
];

const List<String> temperatureUnits = <String>[
  "Celsius (C)",
  "Fahrenheit (F)",
  "Kelvin (K)",
];

String currentMainTypeValue = mainTypeOfUnits.first;
String currentFromUnit = lengthUnits.first;
String currentToUnit = lengthUnits.last;

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
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height:
                    MediaQuery.of(context).orientation == Orientation.portrait
                        ? MediaQuery.of(context).size.width * 0.3
                        : MediaQuery.of(context).size.height * 0.3,
              ),
              // Type drop down selection
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? MediaQuery.of(context).size.width * 0.07
                        : MediaQuery.of(context).size.height * 0.07,
                  ),
                  Text(
                    "Type: ",
                    style: TextStyle(
                      fontFamily: "LilitaOne",
                      fontSize: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                          ? MediaQuery.of(context).size.width * 0.07
                          : MediaQuery.of(context).size.height * 0.07,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).orientation ==
                            Orientation.portrait
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
                          top: MediaQuery.of(context).orientation ==
                                  Orientation.portrait
                              ? MediaQuery.of(context).size.width * 0.04
                              : MediaQuery.of(context).size.height * 0.04,
                          bottom: MediaQuery.of(context).orientation ==
                                  Orientation.portrait
                              ? MediaQuery.of(context).size.width * 0.03
                              : MediaQuery.of(context).size.height * 0.03,
                        ),
                        enabled: false, // Showing the error or hyper texts
                        hintFadeDuration: const Duration(milliseconds: 200),
                      ),
                      isDense: true,
                      icon: const Icon(
                        DropDownArrow.dropdownicon,
                      ),
                      iconSize: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                          ? MediaQuery.of(context).size.width * 0.05
                          : MediaQuery.of(context).size.height * 0.05,
                      iconEnabledColor: const Color.fromARGB(255, 0, 0, 0),
                      itemHeight: MediaQuery.of(context).orientation ==
                              Orientation.portrait
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
                      borderRadius: MediaQuery.of(context).orientation ==
                              Orientation.portrait
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

                          switch (value) {
                            case "Length":
                              currentFromUnit = lengthUnits.first;
                              currentToUnit = lengthUnits.last;
                            case "Area":
                              currentFromUnit = areaUnits.first;
                              currentToUnit = areaUnits.last;
                            case "Volume":
                              currentFromUnit = volumeUnits.first;
                              currentToUnit = volumeUnits.last;
                            case "Mass":
                              currentFromUnit = massUnits.first;
                              currentToUnit = massUnits.last;
                            case "Temperature":
                              currentFromUnit = temperatureUnits.first;
                              currentToUnit = temperatureUnits.last;
                          }
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? MediaQuery.of(context).size.width * 0.07
                        : MediaQuery.of(context).size.height * 0.07,
                  ),
                ],
              ),

              SizedBox(
                height:
                    MediaQuery.of(context).orientation == Orientation.portrait
                        ? MediaQuery.of(context).size.width * 0.09
                        : MediaQuery.of(context).size.height * 0.09,
              ),
              // The From identication
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? MediaQuery.of(context).size.width * 0.35
                        : MediaQuery.of(context).size.height * 0.35,
                    height: 2,
                    color: const Color.fromARGB(20, 0, 0, 0),
                  ),
                  Text(
                    "From",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                          ? MediaQuery.of(context).size.width * 0.07
                          : MediaQuery.of(context).size.height * 0.07,
                      fontFamily: "LilitaOne",
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? MediaQuery.of(context).size.width * 0.35
                        : MediaQuery.of(context).size.height * 0.35,
                    height: 2,
                    color: const Color.fromARGB(20, 0, 0, 0),
                  ),
                ],
              ),

              SizedBox(
                height:
                    MediaQuery.of(context).orientation == Orientation.portrait
                        ? MediaQuery.of(context).size.width * 0.09
                        : MediaQuery.of(context).size.height * 0.09,
              ),

              // The beginning type selector
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
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
                      top: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                          ? MediaQuery.of(context).size.width * 0.04
                          : MediaQuery.of(context).size.height * 0.04,
                      bottom: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                          ? MediaQuery.of(context).size.width * 0.03
                          : MediaQuery.of(context).size.height * 0.03,
                    ),
                    enabled: false, // Showing the error or hyper texts
                    hintFadeDuration: const Duration(milliseconds: 200),
                  ),
                  isDense: true,
                  icon: const Icon(
                    DropDownArrow.dropdownicon,
                  ),
                  iconSize:
                      MediaQuery.of(context).orientation == Orientation.portrait
                          ? MediaQuery.of(context).size.width * 0.05
                          : MediaQuery.of(context).size.height * 0.05,
                  iconEnabledColor: const Color.fromARGB(255, 0, 0, 0),
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
                  value: currentFromUnit,
                  dropdownColor: Colors.white,
                  borderRadius:
                      MediaQuery.of(context).orientation == Orientation.portrait
                          ? BorderRadius.circular(
                              MediaQuery.of(context).size.width * 0.07)
                          : BorderRadius.circular(
                              MediaQuery.of(context).size.width * 0.07),
                  items: () {
                    switch (currentMainTypeValue) {
                      case "Length":
                        return lengthUnits
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList();
                      case "Area":
                        return areaUnits
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList();
                      case "Volume":
                        return volumeUnits
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList();
                      case "Mass":
                        return massUnits
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList();
                      case "Temperature":
                        return temperatureUnits
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList();
                    }
                  }(),
                  onChanged: (String? value) {
                    // This is called when the user selects an item.
                    setState(() {
                      currentFromUnit = value!;
                    });
                  },
                ),
              ),

              SizedBox(
                height:
                    MediaQuery.of(context).orientation == Orientation.portrait
                        ? MediaQuery.of(context).size.width * 0.09
                        : MediaQuery.of(context).size.height * 0.09,
              ),

              // Input number from the user
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? MediaQuery.of(context).size.width * 0.07
                        : MediaQuery.of(context).size.height * 0.07,
                  ),
                  Text(
                    "Value",
                    style: TextStyle(
                      fontFamily: "LilitaOne",
                      fontSize: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                          ? MediaQuery.of(context).size.width * 0.07
                          : MediaQuery.of(context).size.height * 0.07,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? MediaQuery.of(context).size.width * 0.6
                        : MediaQuery.of(context).size.height * 0.6,
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
                      ],
                    ),
                    child: TextField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType
                          .number, // Set the keyboard type to number
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter
                            .digitsOnly // Only numbers can be entered
                      ],
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: MediaQuery.of(context).orientation ==
                                  Orientation.portrait
                              ? BorderRadius.circular(
                                  MediaQuery.of(context).size.width)
                              : BorderRadius.circular(
                                  MediaQuery.of(context).size.width),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Enter your desired number',
                        hintStyle: TextStyle(
                          fontSize: MediaQuery.of(context).orientation ==
                                  Orientation.portrait
                              ? MediaQuery.of(context).size.width * 0.04
                              : MediaQuery.of(context).size.height * 0.04,
                          fontFamily: "SegoeUI",
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? MediaQuery.of(context).size.width * 0.07
                        : MediaQuery.of(context).size.height * 0.07,
                  ),
                ],
              ),

              SizedBox(
                height:
                    MediaQuery.of(context).orientation == Orientation.portrait
                        ? MediaQuery.of(context).size.width * 0.09
                        : MediaQuery.of(context).size.height * 0.09,
              ),

              // The To indefier
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? MediaQuery.of(context).size.width * 0.35
                        : MediaQuery.of(context).size.height * 0.35,
                    height: 2,
                    color: const Color.fromARGB(20, 0, 0, 0),
                  ),
                  Text(
                    "To",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                          ? MediaQuery.of(context).size.width * 0.07
                          : MediaQuery.of(context).size.height * 0.07,
                      fontFamily: "LilitaOne",
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? MediaQuery.of(context).size.width * 0.35
                        : MediaQuery.of(context).size.height * 0.35,
                    height: 2,
                    color: const Color.fromARGB(20, 0, 0, 0),
                  ),
                ],
              ),

              SizedBox(
                height:
                    MediaQuery.of(context).orientation == Orientation.portrait
                        ? MediaQuery.of(context).size.width * 0.09
                        : MediaQuery.of(context).size.height * 0.09,
              ),

              // The desitination type selector
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
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
                      top: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                          ? MediaQuery.of(context).size.width * 0.04
                          : MediaQuery.of(context).size.height * 0.04,
                      bottom: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                          ? MediaQuery.of(context).size.width * 0.03
                          : MediaQuery.of(context).size.height * 0.03,
                    ),
                    enabled: false, // Showing the error or hyper texts
                    hintFadeDuration: const Duration(milliseconds: 200),
                  ),
                  isDense: true,
                  icon: const Icon(
                    DropDownArrow.dropdownicon,
                  ),
                  iconSize:
                      MediaQuery.of(context).orientation == Orientation.portrait
                          ? MediaQuery.of(context).size.width * 0.05
                          : MediaQuery.of(context).size.height * 0.05,
                  iconEnabledColor: const Color.fromARGB(255, 0, 0, 0),
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
                  value: currentToUnit,
                  dropdownColor: Colors.white,
                  borderRadius:
                      MediaQuery.of(context).orientation == Orientation.portrait
                          ? BorderRadius.circular(
                              MediaQuery.of(context).size.width * 0.07)
                          : BorderRadius.circular(
                              MediaQuery.of(context).size.width * 0.07),
                  items: () {
                    switch (currentMainTypeValue) {
                      case "Length":
                        return lengthUnits
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList();
                      case "Area":
                        return areaUnits
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList();
                      case "Volume":
                        return volumeUnits
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList();
                      case "Mass":
                        return massUnits
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList();
                      case "Temperature":
                        return temperatureUnits
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList();
                    }
                  }(),
                  onChanged: (String? value) {
                    // This is called when the user selects an item.
                    setState(() {
                      currentToUnit = value!;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).orientation == Orientation.portrait
              ? MediaQuery.of(context).size.width * 0.05
              : MediaQuery.of(context).size.height * 0.05,
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              MediaQuery.of(context).orientation == Orientation.portrait
                  ? MediaQuery.of(context).size.width
                  : MediaQuery.of(context).size.height,
            ),
            boxShadow: const [
              BoxShadow(
                color: Color.fromARGB(50, 0, 0, 0),
                offset: Offset(0, 10),
                blurRadius: 30,
              ),
            ],
          ),
          child: TextButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 255, 191, 0),
              shape: RoundedRectangleBorder(
                borderRadius: MediaQuery.of(context).orientation ==
                        Orientation.portrait
                    ? BorderRadius.circular(MediaQuery.of(context).size.width)
                    : BorderRadius.circular(MediaQuery.of(context).size.width),
              ),
              padding: EdgeInsets.only(
                right:
                    MediaQuery.of(context).orientation == Orientation.portrait
                        ? MediaQuery.of(context).size.width * 0.25
                        : MediaQuery.of(context).size.height * 0.25,
                left: MediaQuery.of(context).orientation == Orientation.portrait
                    ? MediaQuery.of(context).size.width * 0.25
                    : MediaQuery.of(context).size.height * 0.25,
                top: MediaQuery.of(context).orientation == Orientation.portrait
                    ? MediaQuery.of(context).size.width * 0.03
                    : MediaQuery.of(context).size.height * 0.03,
                bottom:
                    MediaQuery.of(context).orientation == Orientation.portrait
                        ? MediaQuery.of(context).size.width * 0.03
                        : MediaQuery.of(context).size.height * 0.03,
              ),
              alignment: Alignment.center,
            ),
            onPressed: () {
              showDialog(
                context: context,
                barrierColor: const Color.fromARGB(60, 0, 0, 0),
                builder: (BuildContext context) {
                  return BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: AlertDialog(
                      actionsPadding: EdgeInsets.only(
                        right: MediaQuery.of(context).orientation ==
                                Orientation.portrait
                            ? MediaQuery.of(context).size.width * 0.05
                            : MediaQuery.of(context).size.height * 0.05,
                        bottom: MediaQuery.of(context).orientation ==
                                Orientation.portrait
                            ? MediaQuery.of(context).size.width * 0.05
                            : MediaQuery.of(context).size.height * 0.05,
                      ),
                      titlePadding: EdgeInsets.only(
                        top: MediaQuery.of(context).orientation ==
                                Orientation.portrait
                            ? MediaQuery.of(context).size.width * 0.05
                            : MediaQuery.of(context).size.height * 0.05,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          MediaQuery.of(context).orientation ==
                                  Orientation.portrait
                              ? MediaQuery.of(context).size.width * 0.1
                              : MediaQuery.of(context).size.height * 0.1,
                        ),
                      ),
                      backgroundColor: Colors.white,
                      title: Text(
                        'Result',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: "LilitaOne",
                          fontSize: MediaQuery.of(context).orientation ==
                                  Orientation.portrait
                              ? MediaQuery.of(context).size.width * 0.07
                              : MediaQuery.of(context).size.height * 0.07,
                        ),
                      ),
                      content: Text(
                        textAlign: TextAlign.center,
                        'The value ${4} (${"km"}) in (${"m"}) is ${4000}',
                        style: TextStyle(
                          fontFamily: "SegoeUI",
                          fontSize: MediaQuery.of(context).orientation ==
                                  Orientation.portrait
                              ? MediaQuery.of(context).size.width * 0.05
                              : MediaQuery.of(context).size.height * 0.05,
                        ),
                      ),
                      actions: <Widget>[
                        TextButton(
                          style: TextButton.styleFrom(
                            textStyle: Theme.of(context).textTheme.labelLarge,
                          ),
                          child: Text(
                            'Copy',
                            style: TextStyle(
                              color: const Color.fromARGB(255, 255, 191, 0),
                              fontFamily: "LilitaOne",
                              fontSize: MediaQuery.of(context).orientation ==
                                      Orientation.portrait
                                  ? MediaQuery.of(context).size.width * 0.05
                                  : MediaQuery.of(context).size.height * 0.05,
                            ),
                          ),
                          onPressed: () {
                            Clipboard.setData(
                              const ClipboardData(
                                text: "4000",
                              ),
                            ).then((value) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  backgroundColor:
                                      const Color.fromARGB(255, 49, 49, 49),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                      MediaQuery.of(context).orientation ==
                                              Orientation.portrait
                                          ? MediaQuery.of(context).size.width
                                          : MediaQuery.of(context).size.height,
                                    ),
                                  ),
                                  behavior: SnackBarBehavior.floating,
                                  margin: EdgeInsets.only(
                                    right: MediaQuery.of(context).orientation ==
                                            Orientation.portrait
                                        ? MediaQuery.of(context).size.width *
                                            0.1
                                        : MediaQuery.of(context).size.height *
                                            0.1,
                                    left: MediaQuery.of(context).orientation ==
                                            Orientation.portrait
                                        ? MediaQuery.of(context).size.width *
                                            0.1
                                        : MediaQuery.of(context).size.height *
                                            0.1,
                                  ),
                                  padding: EdgeInsets.only(
                                    bottom: MediaQuery.of(context)
                                                .orientation ==
                                            Orientation.portrait
                                        ? MediaQuery.of(context).size.width *
                                            0.035
                                        : MediaQuery.of(context).size.height *
                                            0.035,
                                    top: MediaQuery.of(context).orientation ==
                                            Orientation.portrait
                                        ? MediaQuery.of(context).size.width *
                                            0.035
                                        : MediaQuery.of(context).size.height *
                                            0.035,
                                  ),
                                  content: Text(
                                    "Converted value is copied!",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "SegoeUI",
                                      fontSize: MediaQuery.of(context)
                                                  .orientation ==
                                              Orientation.portrait
                                          ? MediaQuery.of(context).size.width *
                                              0.035
                                          : MediaQuery.of(context).size.height *
                                              0.035,
                                    ),
                                  ),
                                ),
                              );
                            });
                            Navigator.of(context).pop();
                          },
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                            textStyle: Theme.of(context).textTheme.labelLarge,
                          ),
                          child: Text(
                            'OK',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: "LilitaOne",
                              fontSize: MediaQuery.of(context).orientation ==
                                      Orientation.portrait
                                  ? MediaQuery.of(context).size.width * 0.05
                                  : MediaQuery.of(context).size.height * 0.05,
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    ),
                  );
                },
              );
            },
            child: Text(
              "Convert",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize:
                    MediaQuery.of(context).orientation == Orientation.portrait
                        ? MediaQuery.of(context).size.width * 0.07
                        : MediaQuery.of(context).size.height * 0.07,
                fontFamily: "LilitaOne",
              ),
            ),
          ),
        ),
      ),
    );
  }
}
