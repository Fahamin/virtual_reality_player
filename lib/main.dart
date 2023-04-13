import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:virtual_reality_player/pages/arcorepactice.dart';
import 'package:virtual_reality_player/pages/measure_page.dart';
import 'package:virtual_reality_player/pages/videoplayer.dart';
import 'package:vr_player/vr_player.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("VR PLAYER"),
        ),
        body: Center(
          child: HomePage(),
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ElevatedButton(
            onPressed: () => Get.to(VideoPlayer()), child: Text("Start Video")),
        ElevatedButton(onPressed: () => Get.to(ArTest()), child: Text("Ar Core")),
        ElevatedButton(onPressed: () => Get.to(MeasurePage()), child: Text("MeasurePage"))

      ],
    );
  }
}
