// # widgetbook/main.dart
import 'package:flutter/material.dart';
import 'package:storybook_sample/home.dart';
import 'package:widgetbook/widgetbook.dart';

void main() {
  runApp(const HotReloadWidgetbook());
}

class HotReloadWidgetbook extends StatelessWidget {
  const HotReloadWidgetbook({super.key});

  @override
  Widget build(BuildContext context) {
    final devices = [
      Apple.iPhone13,
      Apple.iPhone13Mini,
      Apple.iPhone13Pro,
      Apple.iPhone13ProMax,
      Samsung.s21ultra,
    ];
    final deviceFrameBuilder = DefaultDeviceFrame(
      setting: DeviceSetting.firstAsSelected(devices: devices),
    );

    return Widgetbook.material(
      addons: [
        FrameAddon(
          setting: FrameSetting.firstAsSelected(
            frames: [
              deviceFrameBuilder,
            ],
          ),
        ),
      ],
      directories: [
        WidgetbookCategory(
          isInitiallyExpanded: false,
          name: 'Pages',
          children: [
            WidgetbookComponent(
              name: 'HomePage',
              useCases: [
                WidgetbookUseCase(
                  name: 'HomePage',
                  builder: (context) => Home(
                    title: context.knobs.text(
                      label: 'Title Label',
                      initialValue: 'HomePage',
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        WidgetbookComponent(
          name: '部品',
          useCases: [
            WidgetbookUseCase(
              name: 'HomePage',
              builder: (context) => Scaffold(
                appBar: AppBar(),
                body: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    context.knobs.text(
                      label: 'Title Label',
                      initialValue: 'Button',
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
