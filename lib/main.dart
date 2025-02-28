import 'package:flutter/material.dart';
import 'utils/notifications.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //await FcmHelper.initFcm();

  await AwesomeNotificationsHelper.init();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: FilledButton(
              onPressed: () async {
                await AwesomeNotificationsHelper.showNotification(
                  title: "Test",
                  body: "Test",
                  id: 99,
                );
              },
              child: Text('Hello Wsorlsd!'),
            ),
          ),
        ),
      ),
    );
  }
}
