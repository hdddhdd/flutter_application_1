import 'package:flutter/material.dart';

//상속받는 새로운 위젯 생성
class MyHomePage extends StatelessWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My home page'),
        ),
        //Text라는 위젯을 Center로 감싼 것
        // body: Row(
        //   // mainAxisAlignment: MainAxisAlignment.spaceBetween, //start, end, center, space~
        //   // crossAxisAlignment: CrossAxisAlignment.start,
        //   children: [
        //     Container(
        //       color: Colors.grey,
        //       height: 100,
        //       width: 100,
        //       alignment: Alignment.center,
        //       padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        //       child: const Text(

        //         '1',
        //         style: TextStyle(
        //           fontSize: 10,
        //         ),
        //       ),

        //     ),
        //     Container(
        //       color: Colors.green,
        //       height: 100,
        //       width: 100,
        //       alignment: Alignment.center,
        //       padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        //       child: const Text(
        //         '2',
        //         style: TextStyle(
        //           fontSize: 10,
        //         ),
        //       ),
        //     ),
        //     Container(
        //       color: Colors.red,
        //       height: 100,
        //       width: 100,
        //       alignment: Alignment.center,
        //       padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        //       child: const Text(
        //         '3',
        //         style: TextStyle(
        //           fontSize: 10,
        //         ),
        //       ),
        //     ),
        //   ],
        // ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              color: Colors.yellow,
              child: const Text('안녕! 긴 문장을 써보려구!'),
            ),
            //flex의 default값은 1이다. -> 3주면 더 많이 주는 것
            // 이 외의 여백들은 다 동일하게 준다!
            const Spacer(
              flex: 1,
            ),
            Container(
              color: Colors.green,
              height: 40,
              width: 40,
            ),
            const Spacer(),

            Container(
              color: Colors.blue,
              height: 40,
              width: 40,
              child: const Text('hi'),
            ),
            // SizedBox(
            //   height: 40,
            //   //여백 딱맞춰서 계산해주기
            //   width: (MediaQuery.of(context).size.width)-40*5,
            // ),
            const Spacer(),
            Container(
              color: Colors.purple,
              height: 40,
              width: 40,
            ),
            Container(
              color: Colors.pink,
              height: 40,
              width: 40,
            ),
          ],
        ));
  }
}
