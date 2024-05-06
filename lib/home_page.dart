import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});
  static const colorizeColors = [
    Colors.purple,
    Colors.blue,
    Colors.yellow,
    Colors.red,
  ];
  static const colorizeTextStyle = TextStyle(
    fontSize: 50.0,
    fontFamily: 'Horizon',
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Animated Text',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.blueAccent,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Rotate: ',
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 20,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 200,
                    width: 400,
                    color: Colors.pink[200],
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const SizedBox(width: 20.0, height: 100.0),
                        const Text(
                          'Be',
                          style: TextStyle(fontSize: 43.0),
                        ),
                        const SizedBox(width: 20.0, height: 100.0),
                        DefaultTextStyle(
                          style: const TextStyle(
                            fontSize: 40.0,
                            fontFamily: 'Horizon',
                          ),
                          child: AnimatedTextKit(
                            animatedTexts: [
                              RotateAnimatedText('AWESOME',
                                  textStyle:
                                      TextStyle(color: Colors.blueAccent)),
                              RotateAnimatedText('OPTIMISTIC',
                                  textStyle:
                                      TextStyle(color: Colors.blueAccent)),
                              RotateAnimatedText('DIFFERENT',
                                  textStyle:
                                      TextStyle(color: Colors.blueAccent)),
                            ],
                            onTap: () {
                              print("Tap Event");
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Text('Fade:  ',
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 20,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 200,
                    width: 400,
                    color: Colors.pink[200],
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 250.0,
                          child: DefaultTextStyle(
                            style: const TextStyle(
                              fontSize: 32.0,
                              fontWeight: FontWeight.bold,
                            ),
                            child: AnimatedTextKit(
                              animatedTexts: [
                                FadeAnimatedText('do IT!'),
                                FadeAnimatedText('do it RIGHT!!'),
                                FadeAnimatedText('do it RIGHT NOW!!!'),
                              ],
                              onTap: () {
                                print("Tap Event");
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Text('Typer:   ',
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 20,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 200,
                    width: 400,
                    color: Colors.pink[200],
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 250.0,
                          child: DefaultTextStyle(
                            style: const TextStyle(
                              fontSize: 30.0,
                              fontFamily: 'Bobbers',
                            ),
                            child: AnimatedTextKit(
                              animatedTexts: [
                                TyperAnimatedText(
                                    'It is not enough to do your best,'),
                                TyperAnimatedText('you must know what to do,'),
                                TyperAnimatedText('and then do your best'),
                                TyperAnimatedText('- W.Edwards Deming'),
                              ],
                              onTap: () {
                                print("Tap Event");
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Text('Colorize:',
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 20,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 200,
                    width: 400,
                    color: Colors.pink[200],
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 250.0,
                          child: AnimatedTextKit(
                            animatedTexts: [
                              ColorizeAnimatedText(
                                'Larry Page',
                                textStyle: colorizeTextStyle,
                                colors: colorizeColors,
                              ),
                              ColorizeAnimatedText(
                                'Bill Gates',
                                textStyle: colorizeTextStyle,
                                colors: colorizeColors,
                              ),
                              ColorizeAnimatedText(
                                'Steve Jobs',
                                textStyle: colorizeTextStyle,
                                colors: colorizeColors,
                              ),
                            ],
                            isRepeatingAnimation: true,
                            onTap: () {
                              print("Tap Event");
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Text('TextLiquidFill:',
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 20,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 200,
                    width: 400,
                    color: Colors.pink[200],
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 250.0,
                          child: TextLiquidFill(
                            text: 'LIQUIDY',
                            waveColor: Colors.blueAccent,
                            boxBackgroundColor: Colors.pink.shade200,
                            textStyle: TextStyle(
                              fontSize: 80.0,
                              fontWeight: FontWeight.bold,
                            ),
                            boxHeight: 300.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Text('Wavy:  ',
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 20,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 200,
                    width: 400,
                    color: Colors.pink[200],
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        DefaultTextStyle(
                          style: const TextStyle(
                            fontSize: 20.0,
                          ),
                          child: AnimatedTextKit(
                            animatedTexts: [
                              WavyAnimatedText('Hello World'),
                              WavyAnimatedText('Look at the waves'),
                            ],
                            isRepeatingAnimation: true,
                            onTap: () {
                              print("Tap Event");
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Text('Flicker: ',
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 20,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 200,
                    width: 400,
                    color: Colors.pink[200],
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 250.0,
                          child: DefaultTextStyle(
                            style: const TextStyle(
                              fontSize: 35,
                              color: Colors.white,
                              shadows: [
                                Shadow(
                                  blurRadius: 7.0,
                                  color: Colors.white,
                                  offset: Offset(0, 0),
                                ),
                              ],
                            ),
                            child: AnimatedTextKit(
                              repeatForever: true,
                              animatedTexts: [
                                FlickerAnimatedText('Flicker Frenzy'),
                                FlickerAnimatedText('Night Vibes On'),
                                FlickerAnimatedText("C'est La Vie !"),
                              ],
                              onTap: () {
                                print("Tap Event");
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
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
