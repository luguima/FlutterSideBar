import 'package:flutter/material.dart';
import 'package:sidebar/android/android.app.dart';
import 'dart:io';

import 'package:sidebar/ios/ios.app.dart';

void main() {
  if (Platform.isIOS)
    runApp(IosApp());
  else
    runApp(AndroidApp());
}
