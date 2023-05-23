// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// WidgetbookGenerator
// **************************************************************************

import 'dart:core';
import 'package:flutter/material.dart';
import 'package:storybook_sample/home.dart';
import 'package:storybook_sample/widgetbook/use_cases/use_cases.dart';
import 'package:storybook_sample/widgetbook_main.dart';
import 'package:widgetbook/widgetbook.dart';

void main() {
  runApp(HotReload());
}

class HotReload extends StatelessWidget {
  const HotReload({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      addons: [
        CustomThemeAddon<ThemeData>(
          setting: ThemeSetting<ThemeData>(
            themes: [
              WidgetbookTheme(
                name: 'Light theme',
                data: getLightTheme(),
              ),
              WidgetbookTheme(
                name: 'Dark theme',
                data: getDarkTheme(),
              ),
            ],
            activeTheme: WidgetbookTheme(
              name: 'Light theme',
              data: getLightTheme(),
            ),
          ),
        ),
        FrameAddon(
          setting: FrameSetting(
            frames: [
              NoFrame(),
              DefaultDeviceFrame(
                setting: DeviceSetting(
                  devices: [
                    Device(
                      name: 'iPhone 13 Pro Max',
                      resolution: Resolution(
                        nativeSize: DeviceSize(
                          height: 2778.0,
                          width: 1284.0,
                        ),
                        scaleFactor: 3.0,
                      ),
                      type: DeviceType.mobile,
                    ),
                    Device(
                      name: 'S21 Ultra',
                      resolution: Resolution(
                        nativeSize: DeviceSize(
                          height: 3200.0,
                          width: 1440.0,
                        ),
                        scaleFactor: 3.75,
                      ),
                      type: DeviceType.mobile,
                    ),
                    Device(
                      name: 'Desktop 1080p',
                      resolution: Resolution(
                        nativeSize: DeviceSize(
                          height: 1080.0,
                          width: 1920.0,
                        ),
                        scaleFactor: 2.0,
                      ),
                      type: DeviceType.desktop,
                    ),
                  ],
                  activeDevice: Device(
                    name: 'iPhone 13 Pro Max',
                    resolution: Resolution(
                      nativeSize: DeviceSize(
                        height: 2778.0,
                        width: 1284.0,
                      ),
                      scaleFactor: 3.0,
                    ),
                    type: DeviceType.mobile,
                  ),
                ),
              ),
              WidgetbookFrame(
                setting: DeviceSetting(
                  devices: [
                    Device(
                      name: 'iPhone 13 Pro Max',
                      resolution: Resolution(
                        nativeSize: DeviceSize(
                          height: 2778.0,
                          width: 1284.0,
                        ),
                        scaleFactor: 3.0,
                      ),
                      type: DeviceType.mobile,
                    ),
                    Device(
                      name: 'S21 Ultra',
                      resolution: Resolution(
                        nativeSize: DeviceSize(
                          height: 3200.0,
                          width: 1440.0,
                        ),
                        scaleFactor: 3.75,
                      ),
                      type: DeviceType.mobile,
                    ),
                    Device(
                      name: 'Desktop 1080p',
                      resolution: Resolution(
                        nativeSize: DeviceSize(
                          height: 1080.0,
                          width: 1920.0,
                        ),
                        scaleFactor: 2.0,
                      ),
                      type: DeviceType.desktop,
                    ),
                  ],
                  activeDevice: Device(
                    name: 'iPhone 13 Pro Max',
                    resolution: Resolution(
                      nativeSize: DeviceSize(
                        height: 2778.0,
                        width: 1284.0,
                      ),
                      scaleFactor: 3.0,
                    ),
                    type: DeviceType.mobile,
                  ),
                ),
              ),
            ],
            activeFrame: NoFrame(),
          ),
        ),
      ],
      directories: [
        WidgetbookComponent(
          name: 'AwesomeTile',
          useCases: [
            WidgetbookUseCase(
              name: 'Default',
              builder: (context) => awesomeTileUseCase(context),
            ),
            WidgetbookUseCase(
              name: 'Red',
              builder: (context) => awesomeTileRedUseCase(context),
            ),
            WidgetbookUseCase(
              name: 'Green',
              builder: (context) => awesomeTileGreenUseCase(context),
            ),
          ],
        ),
        WidgetbookComponent(
          name: 'AwesomeAppBar',
          useCases: [
            WidgetbookUseCase(
              name: 'AwesomeAppBar',
              builder: (context) => awesomeAppBar(context),
            ),
          ],
        ),
        WidgetbookComponent(
          name: 'AwesomeButton',
          useCases: [
            WidgetbookUseCase(
              name: 'AwesomeButton',
              builder: (context) => awesomeButton(context),
            ),
          ],
        ),
      ],
    );
  }
}
