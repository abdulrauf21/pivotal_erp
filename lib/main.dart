import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:pivotal_erp/screens/Login%20Authentications/Controller/auth_provider.dart';

import 'package:pivotal_erp/screens/Login%20Authentications/Login%20Screen%20Page/login_screen.dart';
import 'package:provider/provider.dart';
import 'package:pivotal_erp/notificationcallapi.dart';

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  // If you're going to use other Firebase services in the background, such as Firestore,
  // make sure you call `initializeApp` before using other Firebase services.
  await Firebase.initializeApp();

  print("Handling a background message: ${message.messageId}");
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FirebaseMessaging messaging = FirebaseMessaging.instance;
  NotificationSettings settings = await messaging.requestPermission(
    alert: true,
    announcement: false,
    badge: true,
    carPlay: false,
    criticalAlert: false,
    provisional: false,
    sound: true,
  );

  if (settings.authorizationStatus == AuthorizationStatus.authorized) {
    print('User granted permission');
  } else if (settings.authorizationStatus == AuthorizationStatus.provisional) {
    print('User granted provisional permission');
  } else {
    print('User declined or has not accepted permission');
  }
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Pivotal_ERP',
        themeMode: ThemeMode.system,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: LoginScreen(),
      ),
    );
  }
}

class Demo extends StatefulWidget {
  const Demo({super.key});

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  subscribe(String topic) async {
    await FirebaseMessaging.instance.subscribeToTopic(topic);
  }

  @override
  void initState() {
    FirebaseMessaging.onMessage.listen((event) {
      print("Notification received" + event.data.toString());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  subscribe("weekly");
                  final snackbar = SnackBar(content: Text("Weekly Subcribed"));
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                },
                child: Text("Weekly")),
            ElevatedButton(
                onPressed: () {
                  subscribe("monthly");
                  final snackbar = SnackBar(content: Text("Monthly Subcribed"));
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                },
                child: Text("Monthly")),
            ElevatedButton(
              onPressed: () async {
                await sendNotification();
              },
              child: Text("Send Notification"),
            ),
          ],
        ),
      ),
    );
  }
}
