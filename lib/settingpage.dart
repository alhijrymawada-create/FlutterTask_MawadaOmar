import 'package:flutter/material.dart';

class settingpage extends StatelessWidget {
  const settingpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.settings,size: 30,color: Colors.grey,),
          SizedBox(height: 20,),
          Text('الاعدادات',style: TextStyle(fontSize: 24,color: Colors.grey),)
        ],
      ),
    );
  }
}
