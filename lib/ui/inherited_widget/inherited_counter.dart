import 'package:flutter/material.dart';
import 'package:flutter_app/stream/counter.dart';

class InheritedCounter extends InheritedWidget {

  int count = 0;

  InheritedCounter({
    Key key,
    @required Widget child,
  }) : assert(child != null),
        super(key: key, child: child);


  static InheritedCounter of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<InheritedCounter>();
  }

  @override
  bool updateShouldNotify(covariant InheritedCounter oldWidget) {
    return count != oldWidget.count;
  }

}