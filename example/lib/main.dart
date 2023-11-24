import 'dart:async';

import 'package:crisp_chat_sdk/crisp_chat_sdk.dart';
import 'package:flutter/material.dart';

void main() {
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
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              initPlatformState();
            },
            child: const Text('Open crisp chat'),
          ),
        ),
      ),
    );
  }

  Future<void> initPlatformState() async {
    final sdk = CrispChatSdk();
    await sdk.configure(websiteId: "02c4a6e7-1997-4490-8da2-95c648407e57");
    await sdk.setUserEmail(email: "arifsyafieomar@airasia.com");
    await sdk.setSessionSegment(segment: "ustaz");
    await CrispChatSdk().openChat();
  }
}
