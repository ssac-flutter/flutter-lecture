import 'package:flutter/material.dart';
import 'package:flutter_app/counter.dart';
import 'package:flutter_app/list_exam.dart';
import 'package:flutter_app/navigation/first_page.dart';
import 'package:flutter_app/ui/main_page.dart';

class Human {

}

class Man extends Human {

}

bool isMarried;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainPage(),
    );
  }
}

// stless
class HomePage extends StatelessWidget {
  Widget titleSection = Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        color: Colors.green,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                color: Colors.red,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Title',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Sub Title',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.red,
            ),
            Text('41'),
          ],
        ),
      ),
    );

  Widget _buildButtonSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(Colors.lightBlueAccent, Icons.add_call, 'CALL'),
        _buildButtonColumn(Colors.lightBlueAccent, Icons.add_call, 'CALL'),
        _buildButtonColumn(Colors.lightBlueAccent, Icons.add_call, 'CALL'),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter layout demo'),
      ),
      body: ListView(
        children: [
          _buildImage(),
          titleSection,
          _buildButtonSection(),
        ],
      ),
      floatingActionButton: Text('hello'),
    );
  }

  Widget _buildImage() {
    return Image.asset('images/lake.jpg',
      width: double.infinity,
      height: 240.0,
      fit: BoxFit.cover,
    );
  }

  Widget _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: color,),
        Text(label, style: TextStyle(color: color),),
      ],
    );
  }

}

// stless
class TitleSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        color: Colors.green,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                color: Colors.red,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Title',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Sub Title',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.red,
            ),
            Text('41'),
          ],
        ),
      ),
    );
  }
}
