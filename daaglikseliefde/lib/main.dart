import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static const redes = [
    'Ek is lief vir hoe netjies jy is.',
    'Ek is lief vir jou hare.',
    'Ek is lief vir hoe opgewonde jy raak vir goed.',
    'Ek is lief vir hoe baie jy oor my omgee.',
    'Ek is lief vir hoe sterk jy is.',
    'Ek is lief vir hoe fiks jy is',
    'Ek is lief vir jou pragtige gesig.',
    'Ek is lief vir jou mooi hande.',
    'Ek is lief vir jou organisering vaardigheid.',
    'Ek is lief vir jou instinkte.',
    'Ek is lief vir hoe hardkoppig jy is.',
    'Ek is lief vir hoe oulik jy is.',
    'Ek is lief vir hoe stout jy is.',
    'Ek is lief vir al die goedjies wat jy vir my doen.',
    'Ek is lief vir die vordering wat jy gemaak het met jou depressie.',
    'Ek is lief vir hoe erg van `n boekwurm jy is.',
    'Ek is lief daarvoor as jy in jou slaap praat.',
    'Ek is lief daarvoor hoe maklik ek jou kan vertrou.',
    'Ek is lief vir hoe goed jy is met onthou.',
    'Ek is lief vir jou oulike boudjies.',
    'Ek is lief vir die grappige kyke wat jy my gee as ek iets verkeerds gedoen het.',
    'Ek is lief vir hoe goed jy vir my sorg.',
    'Ek is lief vir hoe maklik ek aan die slaap raak naby jou.'
  ];

  int index = 0;

  void _vorige() {
    setState(() {
      index = index == 0 ? index = redes.length - 1 : index - 1;
    });
  }

  void _volgende() {
    setState(() {
      index = index == redes.length - 1 ? index = 0 : index + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.cyan[100],
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(children: [
                    TextSpan(
                      text: redes.length.toString(),
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 45,
                          fontFamily: 'GreatVibes',
                          fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: ' Redes hoekom:',
                      style: TextStyle(
                          fontSize: 40,
                          fontFamily: 'GreatVibes',
                          color: Colors.black),
                    )
                  ]),
                ),
                SizedBox(
                  height: 50,
                ),
                Stack(children: [
                  Image.asset('assets/scroll.png'),
                  Container(
                    padding: const EdgeInsets.only(top: 60),
                    color: Colors.transparent,
                    child: Center(
                      child: SizedBox(
                        width: 290,
                        child: Text(
                          redes[index],
                          style: TextStyle(
                            fontSize: 38,
                            fontFamily: 'GreatVibes',
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ]),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.brown[200]),
                          onPressed: _vorige,
                          child: Text('Vorige Rede')),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.brown[200]),
                          onPressed: _volgende,
                          child: Text('Volgende Rede')),
                    ],
                  ),
                ),
                SizedBox(
                  height: 150,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
