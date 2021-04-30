import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CurrenciesScreen extends StatefulWidget {
  static const urlBlockchain = 'https://www.blockchain.com/ticker';

  @override
  _CurrenciesScreenState createState() => _CurrenciesScreenState();
}

class _CurrenciesScreenState extends State<CurrenciesScreen> {
  double _valueBtc = 0.0;
  double _valueEth = 0.0;
  double _valueLtc = 0.0;

  void updateCriptoValue() async {
    http.Response res = await http.get(CurrenciesScreen.urlBlockchain);
    Map<String, dynamic> data = json.decode(res.body);
    setState(() {
      _valueBtc = data['CAD']['buy'];
    });
  }

  // @override
  // void initState() {
  //   super.initState();
  //   // TODO: implement initState
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cryptocurrency Converter'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              // flex: 1,
              child: Center(
                child: FlatButton(
                  color: Colors.blue,
                  child: Text(
                    '1BTC = $_valueBtc CAD',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            Expanded(
              // flex: 1,
              child: Center(
                child: FlatButton(
                  color: Colors.blue,
                  child: Text(
                    '1ETH = 3372 CAD',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            Expanded(
              // flex: 1,
              child: Center(
                child: FlatButton(
                  color: Colors.blue,
                  child: Text(
                    '1LTC = 316 CAD',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            RaisedButton(
              onPressed: updateCriptoValue,
              color: Colors.blue,
              child: Text(
                'CAD',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
