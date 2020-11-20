import 'dart:async';

class Counter {
  var _count = 0;

  // 데이터가 흐르는 통로
  final _controller = StreamController<int>()..add(0);

  Stream<int> get count => _controller.stream;  // 값이 여기로 나감
  
  void increase() {
    _count++;
    _controller.add(_count);
  }
  
  void decrease() {
    _count--;
    _controller.add(_count);
  }
}