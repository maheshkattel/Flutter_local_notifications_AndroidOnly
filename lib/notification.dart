import 'package:flutter/cupertino.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter/material.dart';
import 'main.dart';

class MaheshNotification {
  static initializae() {
    //Android
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('mipmap/ic_launcher');

    //Image Should be inside mipma/ <-----This folder

    //IOS
    // final DarwinInitializationSettings initializationSettingsDarwin =
    //     DarwinInitializationSettings(
    //         onDidReceiveLocalNotification: ((id, title, body, payload) {
    //   '1';
    //   'Example By Mahesh';
    //   'Hello Mahesh Kattel';
    //   'Hi Mahesh Kattel';
    // }));

    //Initialization

    final InitializationSettings initializationSettings =
        InitializationSettings(
      android: initializationSettingsAndroid,
      // iOS: initializationSettingsDarwin,
    );

    flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

  //Example---------------------------------------------

  static Future<void> showBigTextNotification() async {
    const BigTextStyleInformation bigTextStyleInformation =
        BigTextStyleInformation(
      'I am a <i>Passionate Software Developer</i> Specialzed in <b>Flutter and Dart</b>,from the Top of The World.',
      htmlFormatBigText: true,
      contentTitle: 'Messege <b>from Mahesh</b> : Flutter Developer',
      htmlFormatContentTitle: true,
      summaryText: 'Notification <i>by Mahesh</i>',
      htmlFormatSummaryText: true,
    );
    const AndroidNotificationDetails androidNotificationDetails =
        AndroidNotificationDetails(
            'big text channel id', 'big text channel name',
            channelDescription: 'big text channel description',
            styleInformation: bigTextStyleInformation);

    const NotificationDetails notificationDetails =
        NotificationDetails(android: androidNotificationDetails);

    await flutterLocalNotificationsPlugin.show(
        1, 'Mahesh Kattel', 'Hi There I am Mahesh Kattel', notificationDetails);
  }
}
