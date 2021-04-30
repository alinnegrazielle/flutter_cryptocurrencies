import 'package:flutter/material.dart';

class CurrenciesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cryptocurrency Converter'),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Center(
                child: FlatButton(
                  color: Colors.blue,
                  child: Text(
                    '1BTC = 67626 CAD',
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
              flex: 1,
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
              flex: 1,
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
          ],
        ),
      ),
    );
  }
}
