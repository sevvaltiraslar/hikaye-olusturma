import 'package:flutter/material.dart';
import 'ana_hikaye.dart';

void main() => runApp(Tema());

class Tema extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: HikayeSayfasi(),
    );
  }
}

AnaHikaye anaHikaye = AnaHikaye();

class HikayeSayfasi extends StatefulWidget {
  @override
  _HikayeSayfasiState createState() => _HikayeSayfasiState();
}

class _HikayeSayfasiState extends State<HikayeSayfasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/hikaye.png'),
            fit: BoxFit.cover,
          ),
        ),
        padding: EdgeInsets.symmetric(vertical: 60.0, horizontal: 20.0),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 10,
                child: Center(
                  child: Text(
                    anaHikaye.getHikaye(),
                    style: TextStyle(
                      fontSize: 30.0,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      anaHikaye.siradakiHikaye(1);
                    });
                  },
                  color: Colors.yellow,
                  child: Text(
                    anaHikaye.getSecim1(),
                    style: TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                flex: 3,
                child: Visibility(
                  visible: anaHikaye.butonGorunuyor(),
                  child: FlatButton(
                    onPressed: () {
                      setState(() {
                        anaHikaye.siradakiHikaye(2);
                      });
                    },
                    color: Colors.orange,
                    child: Text(
                      anaHikaye.getSecim2(),
                      style: TextStyle(fontSize: 25.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
