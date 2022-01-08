import 'package:flutter/material.dart';

class PedalLoop extends StatefulWidget {
  const PedalLoop({Key? key}) : super(key: key);

  @override
  _PedalLoopState createState() => _PedalLoopState();
}

class _PedalLoopState extends State<PedalLoop> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.offline_bolt,
          size: 30.0,
          color: Colors.lightGreen,
        ),
        const SizedBox(
          height: 10.0,
        ),
        ConstrainedBox(
          constraints: const BoxConstraints.tightFor(height: 55, width: 55),
          child: ElevatedButton(
            onPressed: () => {},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Loop',
                  style: TextStyle(fontSize: 10),
                ),
                Text(
                  '1',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                )
              ],
            ),
            style: ElevatedButton.styleFrom(shape: const CircleBorder()),
          ),
        )
      ],
    );
  }
}
