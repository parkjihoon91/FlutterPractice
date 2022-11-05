import 'package:flutter/material.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'ButtonScreen',
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
              ),
              child: Text(
                'ElevatedButton',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'TextButton',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text(
                'OutlinedButton',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
