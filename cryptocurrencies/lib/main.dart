import 'package:cryptocurrencies/screens/currencies_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CryptoCurrencies());
}

class CryptoCurrencies extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cryptocurrency Converter',
      home: CurrenciesScreen(),
    );
  }
}
