

import 'package:flutter/material.dart';

class SavedPage extends StatelessWidget {
  const SavedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(child: Text('Saved Page',style: TextStyle(color: Colors.white,fontSize: 20),)),
    );
  }
}