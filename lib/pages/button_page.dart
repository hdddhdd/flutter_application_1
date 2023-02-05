import 'package:flutter/material.dart';

//상태값에 따라서 위젯에게 알려주고 이를 출력하기 위해서는 Statefull Widget으로!
//그런데 stateful위젯도 빌드 다시한다는걸 알려줘야함. -> setState()로!
class ButtonPage extends StatefulWidget {
  //생성자
  ButtonPage({super.key});

  @override
  State<ButtonPage> createState() => _ButtonPageState();
}

//private 위젯 - 여기 내부 클래스에서 주 작업을 함.
class _ButtonPageState extends State<ButtonPage> {
  int count = 0;

  //build method
  @override
  Widget build(BuildContext context) {
    print("flutter: build!");
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button Page'),
      ),

      //floating action button
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
          });
          print(count);
        },
        child: Icon(
          Icons.plus_one,
          color: Colors.white,
        ),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //버튼 1

          ElevatedButton(
            onPressed: () {
              //print('ElevatedButton');
              setState(() {
                count++;
              });
              print(count);
            },
            onLongPress: () {
              //print('Elevated Button longpressed');
            },
            child: const Text('PLUS'),
          ),
          //버튼 2
          ElevatedButton(
            onPressed: () {
              //print('ElevatedButton');
              setState(() {
                count = 0;
              });
              print(count);
            },
            onLongPress: () {
              //print('Elevated Button longpressed');
            },
            child: const Text('TO ZERO'),
          ),

          Center(
            child: Text('$count'),
          ),

          // GestureDetector(
          //     onTap: () {
          //       print('GestureDetector');
          //     },
          //     //디테일한 값들을 전달할 수 있다.
          //     onTapDown: (detail){
          //       print('GestureDetector ${detail.kind} | ${detail.globalPosition}');
          //     },
          //     child: Container(
          //       color: Colors.green,
          //       height: 100,)),
        ],
      ),
    );
  }
}
