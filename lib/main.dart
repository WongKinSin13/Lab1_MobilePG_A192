import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController _num1ctrl = new TextEditingController();
  TextEditingController _num2ctrl = new TextEditingController();
  TextEditingController _deno1ctrl = new TextEditingController();
  TextEditingController _deno2ctrl = new TextEditingController();

  int resultN = 0;
  int resultD = 0;
  String sign = " Result: ";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App1',
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          title: Text('Simple Fraction Calculator'),
        ),
        body: Container(
          color: Colors.blueGrey[200],
          height: 600,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 160,
                height: 460,
                color: Colors.white54,
                child: Column(
                  children: <Widget>[
                    Text('\n1st Fraction',
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold)),
                    Container(
                        padding: EdgeInsets.fromLTRB(40, 10, 40, 0),
                        child: Container(
                          child: TextField(
                            controller: _num1ctrl,
                            keyboardType: TextInputType.numberWithOptions(),
                            style: new TextStyle(
                                fontSize: 22.0,
                                color: const Color(0xFF000000),
                                fontWeight: FontWeight.w200,
                                fontFamily: "Roboto"),
                            decoration: new InputDecoration(
                                border: new OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                    const Radius.circular(7.0),
                                  ),
                                ),
                                filled: true,
                                hintStyle:
                                    new TextStyle(color: Colors.grey[800]),
                                fillColor: Colors.white70),
                          ),
                        )),
                    Text(
                      "________________",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(40, 10, 40, 20),
                      child: TextField(
                        keyboardType: TextInputType.numberWithOptions(),
                        style: new TextStyle(
                            fontSize: 22.0,
                            color: const Color(0xFF000000),
                            fontWeight: FontWeight.w200,
                            fontFamily: "Roboto"),
                        controller: _deno1ctrl,
                        decoration: new InputDecoration(
                            border: new OutlineInputBorder(
                              borderRadius: const BorderRadius.all(
                                const Radius.circular(10.0),
                              ),
                            ),
                            filled: true,
                            fillColor: Colors.white70),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: new MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0))),
                        elevation: 5.0,
                        minWidth: 130.0,
                        height: 50,
                        color: Colors.blue[400],
                        child: new Text('➕ ADD',
                            style: new TextStyle(
                                fontSize: 16.0, color: Colors.white)),
                        onPressed: _addOperation,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0, bottom: 40),
                      child: new MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0))),
                        elevation: 5.0,
                        minWidth: 130.0,
                        height: 50,
                        color: Colors.blue[400],
                        child: new Text('✖️ MULTIPLY',
                            style: new TextStyle(
                                fontSize: 16.0, color: Colors.white)),
                        onPressed: _multiplyOperation,
                      ),
                    ),
                    new Text(
                      "$sign",
                      style: new TextStyle(
                          fontSize: 24.0,
                          color: Colors.green[500],
                          fontWeight: FontWeight.bold,
                          fontFamily: "Merriweather"),
                    ),
                  ],
                ),
              ),
              Container(
                width: 160,
                height: 460,
                color: Colors.white54,
                child: Column(
                  children: <Widget>[
                    Text('\n2nd Fraction',
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold)),
                    Container(
                        padding: EdgeInsets.fromLTRB(40, 10, 40, 0),
                        child: Container(
                          child: TextField(
                            controller: _num2ctrl,
                            keyboardType: TextInputType.numberWithOptions(),
                            style: new TextStyle(
                                fontSize: 22.0,
                                color: const Color(0xFF000000),
                                fontWeight: FontWeight.w200,
                                fontFamily: "Roboto"),
                            decoration: new InputDecoration(
                                border: new OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                    const Radius.circular(7.0),
                                  ),
                                ),
                                filled: true,
                                fillColor: Colors.white70),
                          ),
                        )),
                    Text(
                      "________________",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(40, 10, 40, 20),
                      child: TextField(
                        keyboardType: TextInputType.numberWithOptions(),
                        style: new TextStyle(
                            fontSize: 22.0,
                            color: const Color(0xFF000000),
                            fontWeight: FontWeight.w200,
                            fontFamily: "Roboto"),
                        controller: _deno2ctrl,
                        decoration: new InputDecoration(
                            border: new OutlineInputBorder(
                              borderRadius: const BorderRadius.all(
                                const Radius.circular(10.0),
                              ),
                            ),
                            filled: true,
                            fillColor: Colors.white70),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: new MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0))),
                        elevation: 5.0,
                        minWidth: 130.0,
                        height: 50,
                        color: Colors.blue[400],
                        child: new Text('➖ MINUS',
                            style: new TextStyle(
                                fontSize: 16.0, color: Colors.white)),
                        onPressed: _minusOperation,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0, bottom: 40),
                      child: new MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0))),
                        elevation: 5.0,
                        minWidth: 130.0,
                        height: 50,
                        color: Colors.blue[400],
                        child: new Text('➗ DIVIDE',
                            style: new TextStyle(
                                fontSize: 16.0, color: Colors.white)),
                        onPressed: _divideOperation,
                      ),
                    ),
                    new Text(
                      _printSimplified(resultN, resultD),
                      style: new TextStyle(
                          fontSize: 26.0,
                          color: Colors.green[500],
                          fontWeight: FontWeight.bold,
                          fontFamily: "Merriweather"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _addOperation() {
    setState(() {
      int a = int.parse(_num1ctrl.text);
      int b = int.parse(_deno1ctrl.text);
      int c = int.parse(_num2ctrl.text);
      int d = int.parse(_deno2ctrl.text);
      sign = " Add: ";
      if (b == d) {
        resultN = a + c;
        resultD = b; //denominator is same, no calculation
      } else if (b != d) {
        a *= d; // multiply both numerators first, order of loc is important
        c *= b;
        b *= d; // only need either denominator
        resultN = a + c;
        resultD = b;
        
      }
    });
  }

  void _minusOperation() {
    setState(() {
      int a = int.parse(_num1ctrl.text);
      int b = int.parse(_deno1ctrl.text);
      int c = int.parse(_num2ctrl.text);
      int d = int.parse(_deno2ctrl.text);
      sign = " Subtract: ";
      if (b == d) {
        resultN = a - c;
        resultD = b;
      } else if (b != d) {
        a *= d;
        c *= b;
        b *= d;
        resultN = a - c;
        resultD = b;
      }
    });
  }

  void _multiplyOperation() {
    setState(() {
      int a = int.parse(_num1ctrl.text);
      int b = int.parse(_deno1ctrl.text);
      int c = int.parse(_num2ctrl.text);
      int d = int.parse(_deno2ctrl.text);
      sign = " Multiply: ";
      resultN = a * c; // nume multiply
      resultD = b * d; // deno multiply
    });
  }

  void _divideOperation() {
    setState(() {
      int a = int.parse(_num1ctrl.text);
      int b = int.parse(_deno1ctrl.text);
      int c = int.parse(_num2ctrl.text);
      int d = int.parse(_deno2ctrl.text);
      sign = " Divide: ";
      resultN = a * d;
      resultD = c * b;
    });
  }

  int _gcm(int a, int b) {
    return b == 0 ? a : _gcm(b, a % b);
    // if(b==0), b==a ; else b==gcm(b,a % b)
  }

  String _printSimplified(int a, int b) {
    int gcm = _gcm(a, b);
    return (a / gcm).toString() + "/" + (b / gcm).toString();
  }
}
