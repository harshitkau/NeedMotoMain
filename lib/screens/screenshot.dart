import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:share/share.dart';
import 'dart:ui' as ui;
import 'package:path_provider/path_provider.dart';

class MyHomePage extends StatelessWidget {
  final GlobalKey _globalKey = GlobalKey();

  // Future<void> _captureAndSharePng() async {
  //   try {
  //     RenderRepaintBoundary boundary =
  //     _globalKey.currentContext!.findRenderObject() as RenderRepaintBoundary;
  //     if (boundary.debugNeedsPaint) {
  //       await Future.delayed(const Duration(milliseconds: 20));
  //       return _captureAndSharePng();
  //     }
  //     ui.Image image = await boundary.toImage();
  //     ByteData? byteData =
  //     await image.toByteData(format: ui.ImageByteFormat.png);
  //     Uint8List pngBytes = byteData!.buffer.asUint8List();
  //
  //     await Share.shareFiles(['my_screenshot.png'],
  //         text: 'Here is your screenshot');
  //   } catch (e) {
  //     print(e.toString());
  //   }
  // }

  // Future<void> _captureAndSharePng() async {
  //   try {
  //     RenderRepaintBoundary boundary = _globalKey.currentContext!.findRenderObject() as RenderRepaintBoundary;
  //     if (boundary.debugNeedsPaint) {
  //       await Future.delayed(const Duration(milliseconds: 20));
  //       return _captureAndSharePng();
  //     }
  //
  //     ui.Image image = await boundary.toImage();
  //     ByteData? byteData = await image.toByteData(format: ui.ImageByteFormat.png);
  //     Uint8List pngBytes = byteData!.buffer.asUint8List();
  //
  //     final directory = await getApplicationDocumentsDirectory() ;
  //     final imagePath = '${directory.path}/my_screenshot.png';
  //     final imageFile = await File(imagePath).writeAsBytes(pngBytes);
  //
  //     await Share.shareFiles([imagePath], text: 'Here is your screenshot');
  //   } catch (e) {
  //     print(e.toString());
  //   }
  // }
  //
  // Future<void> _captureAndSharePng() async {
  //   try {
  //     RenderRepaintBoundary boundary =
  //     _globalKey.currentContext!.findRenderObject() as RenderRepaintBoundary;
  //     if (boundary.debugNeedsPaint) {
  //       await Future.delayed(const Duration(milliseconds: 20));
  //       return _captureAndSharePng();
  //     }
  //
  //     ui.Image image = await boundary.toImage();
  //     ByteData? byteData =
  //     await image.toByteData(format: ui.ImageByteFormat.png);
  //     Uint8List pngBytes = byteData!.buffer.asUint8List();
  //
  //     // Get the app's documents directory
  //     Directory documentsDirectory = await getApplicationDocumentsDirectory();
  //
  //     // Create the directory if it doesn't exist
  //     await documentsDirectory.create(recursive: true);
  //
  //
  //     // Create a file for the screenshot and write the pngBytes to it
  //     File screenshotFile =
  //     File('${documentsDirectory.path}/my_screenshot.png');
  //     await screenshotFile.writeAsBytes(pngBytes);
  //
  //     // Share the screenshot file
  //     await Share.shareFiles([screenshotFile.path],
  //         text: 'Here is your screenshot');
  //   } catch (e) {
  //     print(e.toString());
  //   }
  // }

  Future<void> _captureAndSharePng() async {
    try {
      RenderRepaintBoundary boundary =
      _globalKey.currentContext!.findRenderObject() as RenderRepaintBoundary;
      if (boundary.debugNeedsPaint) {
        await Future.delayed(const Duration(milliseconds: 20));
        return _captureAndSharePng();
      }

      ui.Image image = await boundary.toImage();
      ByteData? byteData =
      await image.toByteData(format: ui.ImageByteFormat.png);
      Uint8List pngBytes = byteData!.buffer.asUint8List();

      // Get the app's documents directory
      Directory documentsDirectory = await getApplicationDocumentsDirectory();

      // Create the directory if it doesn't exist
      await documentsDirectory.create(recursive: true);

      // Create a file for the screenshot and write the pngBytes to it
      File screenshotFile =
      File('${documentsDirectory.path}/my_screenshot.png');
      await screenshotFile.writeAsBytes(pngBytes);

      // Share the screenshot file with the full path
      await Share.shareFiles([screenshotFile.path],
          text: 'Here is your screenshot');

    } catch (e) {
      print(e.toString());
    }
  }











  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Take a Screenshot'),
      ),
      body: Center(
        child: RepaintBoundary(
          key: _globalKey,
          child: const Text('Take a screenshot of this text!'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _captureAndSharePng,
        tooltip: 'Capture and Share Screenshot',
        child: const Icon(Icons.share),
      ),
    );
  }
}

class MyHomePageController extends GetxController {
  final GlobalKey _globalKey = GlobalKey();

  Future<void> captureAndSharePng() async {
    try {
      RenderRepaintBoundary boundary =
      _globalKey.currentContext!.findRenderObject() as RenderRepaintBoundary;
      if (boundary.debugNeedsPaint) {
        await Future.delayed(const Duration(milliseconds: 20));
        return captureAndSharePng();
      }
      ui.Image image = await boundary.toImage();
      ByteData? byteData =
      await image.toByteData(format: ui.ImageByteFormat.png);
      Uint8List pngBytes = byteData!.buffer.asUint8List();

      await Share.shareFiles(['my_screenshot.png'],
          text: 'Here is your screenshot');
    } catch (e) {
      print(e.toString());
    }
  }

  GlobalKey get globalKey => _globalKey;
}

class MyHomePageView extends GetView<MyHomePageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Take a Screenshot'),
      ),
      body: Center(
        child: RepaintBoundary(
          key: controller.globalKey,
          child: const Text('Take a screenshot of this text!'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.captureAndSharePng,
        tooltip: 'Capture and Share Screenshot',
        child: const Icon(Icons.share),
      ),
    );
  }
}