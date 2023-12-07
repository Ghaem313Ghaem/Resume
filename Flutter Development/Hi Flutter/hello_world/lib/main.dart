import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.black,
      title: "Hello World Travel Title",
      home: WelcomePageFlutter(),
    );
  }
}

class WelcomePageFlutter extends StatelessWidget {
  const WelcomePageFlutter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: (MediaQuery.of(context).orientation == Orientation.portrait)
          ? SingleChildScrollView(
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Opacity(
                    opacity: 0.63,
                    child: Transform.scale(
                      scale: 1.3,
                      origin: Offset(MediaQuery.of(context).size.height / 4.2,
                          -MediaQuery.of(context).size.height / 3.4),
                      child: Image.asset(
                        "assets/illustrations/Flutter_Logo.png",
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      // For other devices it should be csutomizeed based on the devices resolutions
                      top: (MediaQuery.of(context).size.width > 1080)
                          ? MediaQuery.of(context).size.height / 10
                          : MediaQuery.of(context).size.width / 10,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 5.5,
                        ),
                        Text(
                          "Hi Flutter",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 41, 226, 255),
                            fontFamily: "Cabin",
                            fontWeight: FontWeight.bold,
                            fontSize: MediaQuery.of(context).size.height / 10,
                            letterSpacing: -7,
                          ),
                        ),
                        const SizedBox(
                          height: 70,
                        ),
                        Transform.scale(
                          scale: 2,
                          child: Image.asset(
                            "assets/illustrations/Dash_Picture.png",
                          ),
                        ),
                        const SizedBox(
                          height: 140,
                        ),
                        Text(
                          "Start you big journey.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            fontFamily: "Cabin",
                            fontWeight: FontWeight.bold,
                            fontSize: MediaQuery.of(context).size.height / 40,
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        TextButton(
                          onPressed: () => _dialogBuilder(context),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              const Color.fromARGB(255, 41, 226, 255),
                            ),
                            fixedSize: MaterialStateProperty.all(
                              Size(MediaQuery.of(context).size.width * 0.85,
                                  MediaQuery.of(context).size.width * 0.15),
                            ),
                            splashFactory: NoSplash.splashFactory,
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    MediaQuery.of(context).size.height,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          child: Text(
                            "Call Dash",
                            style: TextStyle(
                              color: const Color.fromARGB(255, 0, 0, 0),
                              fontFamily: "Cabin",
                              fontWeight: FontWeight.bold,
                              fontSize: MediaQuery.of(context).size.height / 40,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          : SingleChildScrollView(
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Opacity(
                    opacity: 0.63,
                    child: Image.asset(
                      "assets/illustrations/Flutter_Logo.png",
                      height: MediaQuery.of(context).size.height,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        child: Stack(
                          alignment: Alignment.centerRight,
                          children: [
                            Transform.scale(
                              scale: 1.1,
                              origin: Offset(
                                  MediaQuery.of(context).size.height * 3,
                                  MediaQuery.of(context).size.height / 2),
                              child: Image.asset(
                                "assets/illustrations/Dash_Picture.png",
                              ),
                            ),
                            Positioned(
                              left: MediaQuery.of(context).size.width / 1.4,
                              child: Column(
                                children: [
                                  Text(
                                    "Hi Flutter",
                                    style: TextStyle(
                                      color: const Color.fromARGB(
                                          255, 41, 226, 255),
                                      fontFamily: "Cabin",
                                      fontWeight: FontWeight.bold,
                                      fontSize:
                                          MediaQuery.of(context).size.height /
                                              7,
                                      letterSpacing: -7,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "Start you big journey.",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: const Color.fromARGB(
                                          255, 255, 255, 255),
                                      fontFamily: "Cabin",
                                      fontWeight: FontWeight.bold,
                                      fontSize:
                                          MediaQuery.of(context).size.height /
                                              25,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  TextButton(
                                    onPressed: () => _dialogBuilder(context),
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                        const Color.fromARGB(255, 41, 226, 255),
                                      ),
                                      fixedSize: MaterialStateProperty.all(
                                        Size(
                                            MediaQuery.of(context).size.height *
                                                0.5,
                                            MediaQuery.of(context).size.height *
                                                0.1),
                                      ),
                                      splashFactory: NoSplash.splashFactory,
                                      shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(
                                              MediaQuery.of(context)
                                                  .size
                                                  .height,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    child: Text(
                                      "Call Dash",
                                      style: TextStyle(
                                        color:
                                            const Color.fromARGB(255, 0, 0, 0),
                                        fontFamily: "Cabin",
                                        fontWeight: FontWeight.bold,
                                        fontSize:
                                            MediaQuery.of(context).size.height /
                                                25,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
    );
  }
}

Future<void> _dialogBuilder(BuildContext context) {
  return (MediaQuery.of(context).orientation == Orientation.portrait)
      ? showDialog<void>(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  MediaQuery.of(context).size.height / 20,
                ),
              ),
              actionsAlignment: MainAxisAlignment.center,
              title: Text(
                'I received your Call!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color.fromARGB(255, 41, 226, 255),
                  fontSize: MediaQuery.of(context).size.height / 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              content: Text(
                "I'm on the tree, I forgot to bring my phone ;)",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height / 50,
                ),
              ),
              actions: <Widget>[
                TextButton(
                  style: ButtonStyle(
                    splashFactory: NoSplash.splashFactory,
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          MediaQuery.of(context).size.height,
                        ),
                      ),
                    ),
                  ),
                  child: Text(
                    'OK',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 41, 226, 255),
                      fontSize: MediaQuery.of(context).size.height / 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        )
      : showDialog<void>(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  MediaQuery.of(context).size.height / 10,
                ),
              ),
              actionsAlignment: MainAxisAlignment.center,
              title: Text(
                'I received your Call!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color.fromARGB(255, 41, 226, 255),
                  fontSize: MediaQuery.of(context).size.height / 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              content: Text(
                "I'm on the tree, I forgot to bring my phone ;)",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height / 25,
                ),
              ),
              actions: <Widget>[
                TextButton(
                  style: ButtonStyle(
                    splashFactory: NoSplash.splashFactory,
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          MediaQuery.of(context).size.height,
                        ),
                      ),
                    ),
                  ),
                  child: Text(
                    'OK',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 41, 226, 255),
                      fontSize: MediaQuery.of(context).size.height / 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
}
