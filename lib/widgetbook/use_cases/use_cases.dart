import 'package:flutter/material.dart';
import 'package:storybook_sample/widgets.dart';
import 'package:widgetbook/widgetbook.dart' as widgetbook;
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

class _UseWrapper extends StatelessWidget {
  const _UseWrapper({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Use cases'),
        backgroundColor: Colors.white,
      ),
      body: Center(child: child),
    );
  }
}

@WidgetbookUseCase(name: 'Default', type: AwesomeTile)
Widget awesomeTileUseCase(BuildContext context) {
  return const _UseWrapper(
    child: AwesomeTile(
      color: Color.fromARGB(255, 33, 17, 17),
    ),
  );
}

@WidgetbookUseCase(name: 'Red', type: AwesomeTile)
Widget awesomeTileRedUseCase(BuildContext context) {
  return const _UseWrapper(
    child: AwesomeTile(
      color: Colors.red,
    ),
  );
}

@WidgetbookUseCase(name: 'Green', type: AwesomeTile)
Widget awesomeTileGreenUseCase(BuildContext context) {
  return const _UseWrapper(
    child: AwesomeTile(
      color: Colors.green,
    ),
  );
}

@WidgetbookUseCase(name: 'AwesomeButton', type: AwesomeButton)
Widget awesomeButton(BuildContext context) {
  return _UseWrapper(
    child: AwesomeButton(
      title: context.knobs.text(label: 'Title', initialValue: 'AwesomeButton'),
    ),
  );
}

@WidgetbookUseCase(name: 'AwesomeAppBar', type: AwesomeAppBar)
Widget awesomeAppBar(BuildContext context) {
  return _UseWrapper(
    child: AwesomeAppBar(
      title: context.knobs.text(label: 'Title', initialValue: 'AwesomeAppBar'),
      color: Colors.blue,
    ),
  );
}
