import 'package:flutter/material.dart';

class StatefulWidgetTest extends StatefulWidget {
  Color color;

  StatefulWidgetTest({
    required this.color,
    Key? key,
  }) : super(key: key) {
    print('StatefulWidget Constructor');
  }

  @override
  State<StatefulWidgetTest> createState() {
    print('StatefulWidget createState');
    return _StatefulWidgetTestState();
  }
}

class _StatefulWidgetTestState extends State<StatefulWidgetTest> {
  @override
  void initState() {
    print('StatefulWidget initState');
    super.initState();
  }

  @override
  void didChangeDependencies() {
    print('StatefulWidget didChangeDependencies');
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant StatefulWidgetTest oldWidget) {
    print('StatefulWidget didUpdateWidget');
    super.didUpdateWidget(oldWidget);
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    print('StatefulWidget deactivate');
    super.deactivate();
  }

  @override
  void dispose() {
    print('StatefulWidget dispose');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('StatefulWidget build');
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'StatefulWidget',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        widget.color,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        print('StatefulWidget setState');
                        widget.color = Colors.red;
                      });
                    },
                    child: Text(
                      '배경색변경',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        print('StatefulWidget setState');
                        Navigator.of(context).pop();
                      });
                    },
                    child: Text(
                      '종료',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
