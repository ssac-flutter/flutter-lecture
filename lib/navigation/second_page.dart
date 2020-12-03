import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final String name;

  SecondPage(this.name);

  void myFunc(int a) => print('333');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('두번째 전환 $name'),
      ),
      body: Column(
        children: [
          // 익명함
          ElevatedButton(onPressed: () => print("hello"),
          child: null,),
          ElevatedButton(
            onPressed: () {
              // 그냥 닫기
              // Navigator.pop(context);

              // 값 돌려주기
              Navigator.pop(context, 'hello world');
            },
            child: Text('닫기'),
          )
        ],
      ),
    );
  }
}
