import 'package:flutter/material.dart';

import 'Global.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int Questionanswer = 0;
  int winPrice = 500000;
  int jeetigayo = 0;
  int harigayo = 0;
  int GameOver = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: (Questionanswer < Questionopbolte.length &&
                jeetigayo == 0 &&
                harigayo == 0)
            ? IndexedStack(
                index: Questionanswer,
                children: Questionopbolte.map((Map e) {
                  return HomePage(data: e);
                }).toList(),
              )
            : (Questionanswer < Questionopbolte.length && jeetigayo == 1)
                ? Container(
                    alignment: Alignment.center,
                    color: Colors.black,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Spacer(),
                        const SizedBox(
                          height: 150,
                          width: 150,
                          child: Image(
                            image: AssetImage(
                              'assets/fire-cracker.png',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Text(
                          "Your Answer is Correct",
                          style: TextStyle(
                            color: Color(0xffc78640),
                            fontSize: 22,
                          ),
                        ),
                        const SizedBox(height: 25),
                        const Text(
                          "You Won",
                          style: TextStyle(
                            fontSize: 22,
                            color: Color(0xffc78640),
                          ),
                        ),
                        Text(
                          "$winPrice",
                          style: const TextStyle(
                            fontSize: 22,
                            color: Color(0xffc78640),
                          ),
                        ),
                        const SizedBox(height: 25),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              Questionanswer++;
                              jeetigayo = 0;
                            });
                          },
                          child: const Text(
                            "Next",
                            style: TextStyle(fontSize: 20),
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: const Color(0xff1e1f23),
                              onPrimary: const Color(0xffd6d6d6),
                              padding: const EdgeInsets.symmetric(
                                vertical: 16,
                                horizontal: 80,
                              )),
                        ),
                        const Spacer(),
                      ],
                    ),
                  )
                : (Questionanswer < Questionopbolte.length && harigayo == 1)
                    ? Container(
                        alignment: Alignment.center,
                        color: Colors.black,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Spacer(),
                            const SizedBox(
                              height: 150,
                              width: 150,
                              child: Image(
                                image: AssetImage(
                                  'assets/lose.png',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              "oops!",
                              style: TextStyle(
                                color: Color(0xffd4d4ff),
                                fontSize: 22,
                              ),
                            ),
                            const SizedBox(height: 25),
                            const Text(
                              "Sorry You are",
                              style: TextStyle(
                                fontSize: 22,
                                color: Color(0xffd4d4ff),
                              ),
                            ),
                            const Text(
                              "the lose",
                              style: TextStyle(
                                fontSize: 22,
                                color: Color(0xffd4d4ff),
                              ),
                            ),
                            const SizedBox(height: 25),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  Questionanswer = 0;
                                  harigayo = 0;
                                  winPrice = 10000;
                                });
                              },
                              child: const Text(
                                'Try Again',
                                style: TextStyle(fontSize: 20),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: const Color(0xff1e1f23),
                                onPrimary: const Color(0xffd6d6d6),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 80,
                                  vertical: 16,
                                ),
                              ),
                            ),
                            const Spacer(),
                          ],
                        ),
                      )
                    : Container(
                        alignment: Alignment.center,
                        color: Colors.black,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Spacer(),
                            const SizedBox(
                              height: 150,
                              width: 150,
                              child: Image(
                                image: AssetImage("assets/fire-cracker.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                            const Text(
                              "Congratulations",
                              style: TextStyle(
                                  color: Color(0xff5b5f62), fontSize: 22),
                            ),
                            const SizedBox(height: 25),
                            const Text(
                              "Game Over",
                              style: TextStyle(
                                fontSize: 22,
                                color: Color(0xffffffff),
                              ),
                            ),
                            const SizedBox(height: 25),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  Questionanswer = 0;
                                  winPrice = 10000;
                                });
                              },
                              child: const Text(
                                'Restart',
                                style: TextStyle(fontSize: 20),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: const Color(0xff1e1f23),
                                onPrimary: const Color(0xffd6d6d6),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 80,
                                  vertical: 16,
                                ),
                              ),
                            ),
                            const Spacer(),
                          ],
                        ),
                      ),
      ),
    );
  }

  Widget HomePage({required Map data}) {
    return Column(
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.center,
            color: data['backgroundColor'],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  data['question'],
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                  ),
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.black,
            child: Column(
              children: [
                const Spacer(flex: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (Questionanswer < Questionopbolte.length) {
                            if (data['answer'] == 'A') {
                              winPrice = winPrice * 2;
                              jeetigayo = 1;
                            } else {
                              harigayo = 1;
                            }
                          }
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          primary: const Color(0xff1e1f23),
                          onPrimary: const Color(0xffa8a8a9),
                          alignment: Alignment.center,
                          minimumSize: const Size(180, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          )),
                      child: Text("A.${data['A']}"),
                    ),
                    const SizedBox(width: 25),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (Questionanswer < Questionopbolte.length) {
                            if (data['answer'] == 'B') {
                              winPrice = winPrice * 2;
                              jeetigayo = 1;
                            } else {
                              harigayo = 1;
                            }
                          }
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          primary: const Color(0xff1e1f23),
                          onPrimary: const Color(0xffa8a8a9),
                          alignment: Alignment.center,
                          minimumSize: const Size(180, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          )),
                      child: Text("B.${data['B']}"),
                    ),
                  ],
                ),
                const Spacer(flex: 1),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (Questionanswer < Questionopbolte.length) {
                            if (data['answer'] == 'C') {
                              winPrice = winPrice * 2;
                              jeetigayo = 1;
                            } else {
                              harigayo = 1;
                            }
                          }
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          primary: const Color(0xff1e1f23),
                          onPrimary: const Color(0xffa8a8a9),
                          alignment: Alignment.center,
                          minimumSize: const Size(180, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          )),
                      child: Text("C.${data['C']}"),
                    ),
                    const SizedBox(width: 25),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (Questionanswer < Questionopbolte.length) {
                            if (data['answer'] == 'D') {
                              winPrice = winPrice * 2;
                              jeetigayo = 1;
                            } else {
                              harigayo = 1;
                            }
                          }
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          primary: const Color(0xff1e1f23),
                          onPrimary: const Color(0xffa8a8a9),
                          alignment: Alignment.center,
                          minimumSize: const Size(180, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          )),
                      child: Text("D.${data['D']}"),
                    ),
                  ],
                ),
                const Spacer(flex: 4),
              ],
            ),
          ),
        )
      ],
    );
  }
}
