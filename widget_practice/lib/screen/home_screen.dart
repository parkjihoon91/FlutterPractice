import 'package:flutter/material.dart';
import 'package:widget_practice/screen/button_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '각종 위젯 테스트',
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => ButtonScreen(),
                  ),
                );
              },
              child: Text(
                '버튼위젯으로 이동',
              ),
            ),
            SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
