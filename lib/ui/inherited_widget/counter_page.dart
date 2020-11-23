import 'package:flutter/material.dart';
import 'package:flutter_app/ui/inherited_widget/inherited_counter.dart';

class CounterPage extends StatefulWidget {
  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (BuildContext innerContext) {
        return Scaffold(
          appBar: AppBar(
            title: Text('InheritedWidget'),
          ),
          body: Center(
          child: Text('${InheritedCounter.of(innerContext).count}', style: TextStyle(fontSize: 40))),
          floatingActionButton: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                heroTag: 'tag1',
                child: Icon(Icons.add),
                onPressed: () {
                  setState(() {
                    InheritedCounter.of(innerContext).count++;
                  });
                },
              ),
              FloatingActionButton(
                heroTag: 'tag2',
                child: Icon(Icons.arrow_right),
                onPressed: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => OtherPage()),
                    );
                  });
                },
              ),
            ],
          ),
        );
      },
    );
  }
}

class OtherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('${InheritedCounter.of(context).count}'),
    );
  }
}
