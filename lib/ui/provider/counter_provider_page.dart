import 'package:flutter/material.dart';
import 'package:flutter_app/ui/inherited_widget/inherited_counter.dart';
import 'package:flutter_app/ui/provider/counter.dart';
import 'package:provider/provider.dart';

class CounterProviderPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context);

    return Builder(
      builder: (BuildContext innerContext) {
        return Scaffold(
          appBar: AppBar(
            title: Text('provider'),
          ),
          body: Center(
          child: Text('${counter.count}', style: TextStyle(fontSize: 40))),
          floatingActionButton: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                heroTag: 'tag1',
                child: Icon(Icons.add),
                onPressed: () {
                  counter.increase();
                },
              ),
              FloatingActionButton(
                heroTag: 'tag2',
                child: Icon(Icons.arrow_right),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OtherPage()),
                  );
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
      child: Text('${context.watch<Counter>().count}'),
    );
  }
}
