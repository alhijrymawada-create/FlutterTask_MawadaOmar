import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TasbeehScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TasbeehScreen extends StatefulWidget {
  @override
  _TasbeehScreenState createState() => _TasbeehScreenState();
}

class _TasbeehScreenState extends State<TasbeehScreen> {
  String currentText = 'الله أكبر';
  int counter = 0;

  void _onButtonPressed(String text) {
    setState(() {
      currentText = text;
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text('المسبحة الالكترونية'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              currentText,
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 10),
            Text(
              '$counter',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            Wrap(
              spacing: 15,
              children: [
                _buildTasbeehButton('الله أكبر'),
                _buildTasbeehButton('الحمدلله'),
                _buildTasbeehButton('سبحان الله'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTasbeehButton(String text) {
    return ElevatedButton(
      onPressed: () => _onButtonPressed(text),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        elevation: 3,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      ),
      child: Text(text),
    );
  }
}
