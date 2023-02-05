import 'package:flutter/material.dart';

class HeejungHomePage extends StatelessWidget {
  //생성자
  const HeejungHomePage({super.key});
  //build method
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Heejung Home Page'),
        
      ),
      body: const Center(child: Text('안녕! 이건 희정이의 앱이지롱'),),
    );
  }
}
