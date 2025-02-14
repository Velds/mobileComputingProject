import 'package:flutter/material.dart';

class EmptyContent extends StatelessWidget {
  const EmptyContent({
    Key? key,
    this.title = 'You have nothing yet',
    this.message = 'Click + to sell, or search to buy',
  }) : super(key: key);
  final String title;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            title,
            style: const TextStyle(fontSize: 32.0, color: Colors.black54),
          ),
          Text(
            message,
            style: const TextStyle(fontSize: 16.0, color: Colors.black54),
          ),
        ],
      ),
    );
  }
}
