import 'package:flutter/material.dart';

class StatelessWidgetTest extends StatelessWidget {
  StatelessWidgetTest({Key? key}) : super(key: key) {
    print('StatelessWidget Constructor ');
  }

  @override
  Widget build(BuildContext context) {
    print('StatelessWidget build');
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'StatelessWidget',
        ),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {},
            child: Text(
              '간단함',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
