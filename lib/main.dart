import 'package:flutter/material.dart';
import 'package:calculatorapp/interface.dart';
void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Calculator Application',
      initialRoute: '/',
      routes: {
            
        '/': (context) => const InterfaceScreen(),
}
));
}

