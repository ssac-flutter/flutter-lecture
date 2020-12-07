import 'package:flutter/material.dart';
import 'package:flutter_app/ui/http/viewmodel/http_view_model.dart';
import 'package:provider/provider.dart';

// View
class HttpPage extends StatefulWidget {
  @override
  _HttpPageState createState() => _HttpPageState();
}

class _HttpPageState extends State<HttpPage> {

  @override
  void initState() {
    super.initState();
    final viewModel = context.read<HttpViewModel>();
    viewModel.fetchAlbums();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<HttpViewModel>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Http'),
      ),
      body: Center(
        child: viewModel.albums.isEmpty
            ? CircularProgressIndicator()
            : Text(viewModel.albums.toString()),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          viewModel.fetchAlbumLimit(2);
        },
        child: Icon(Icons.send),
      ),
    );
  }
}
