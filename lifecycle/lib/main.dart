import 'package:flutter/material.dart';
import 'package:lifecycle/screen/statefulwidget_test.dart';
import 'package:lifecycle/screen/stateleewidget_test.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Lifecycle Test'),
        ),
        body: MainScreen(),
      ),
    ),
  );
}

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => StatelessWidgetTest(),
                  ),
                );
              },
              child: Text(
                'StatelessWidget move',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => StatefulWidgetTest(
                      color: Colors.blue,
                    ),
                  ),
                );
              },
              child: Text(
                'StatefulWidget move',
              ),
            )
          ],
        ),
      ),
    );
  }
}
