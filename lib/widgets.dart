import 'package:flutter/material.dart';

class AwesomeTile extends StatelessWidget {
  const AwesomeTile({Key? key, required this.color}) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      color: color,
    );
  }
}

class AwesomeButton extends StatelessWidget {
  const AwesomeButton({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(title),
    );
  }
}

class AwesomeAppBar extends StatelessWidget {
  const AwesomeAppBar({
    super.key,
    required this.title,
    required this.color,
  });

  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      backgroundColor: color,
    );
  }
}
