import 'package:flutter/material.dart';
import 'package:localpushnotifications/notification.dart';

class DemoLocalPushNotifications extends StatelessWidget {
  const DemoLocalPushNotifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: MaterialButton(
              child: Text('I Said Send'),
              onPressed: () {
                MaheshNotification.showBigTextNotification();
              },
              color: Colors.teal,
            ),
          )
        ],
      ),
    );
  }
}
