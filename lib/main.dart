import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatelessWidget(),
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ElevatedButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20),
              backgroundColor: Color(0xFFFFEB3B),
              foregroundColor: Colors.red,
            ),
            onPressed: () {},
            child: const Text('RaisedButton'),
          ),

          const SizedBox(height: 10),

          TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20),
              backgroundColor: Color(0xFF1976D2),
              foregroundColor: Colors.white,
            ),
            onPressed: () {},
            child: const Text('FlatButton'),
          ),

          const SizedBox(height: 10),

          ElevatedButton(
            child: Text("你按下snackbar"),
            onPressed: (){
              Fluttertoast.showToast(
                  msg: "你按下RaiseButton",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.blue,
                  textColor: Colors.white,
                  fontSize: 16.0);

            },
          ),
          const SizedBox(height: 10),

          OutlinedButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20),
              backgroundColor: Color(0xB3FFFFFF),
              foregroundColor: Colors.black,
              side: (BorderSide(width: 1, color: Color(0xFFF44336))),
            ),
            onPressed: () {},
            child: const Text('OutlineButton'),
          ),

          const SizedBox(height: 10),

          IconButton(
            color: Colors.blue,
            icon: Icon(Icons.phone_android),
            onPressed: () {},
          ),

          const SizedBox(height: 10),

          FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.blue,
            child: const Icon(Icons.phone_android),

          ),

          const SizedBox(height: 10),

          ElevatedButton.icon(
              onPressed: () {},
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 20),
                backgroundColor: Color(0xFF9E9E9E),
                foregroundColor: Colors.red,
              ),
              icon: Icon(Icons.phone_android),
              label: Text('RaisedButton.icon')),

        ],
      ),
    );
  }
}


void showtoast(BuildContext context) {
  final scaffold = ScaffoldMessenger.of(context);
  scaffold.showSnackBar(
    SnackBar(
      content: const Text('Added to favorite'),
      action: SnackBarAction(label: 'UNDO', onPressed: scaffold.hideCurrentSnackBar),
    ),
  );
}