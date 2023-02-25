import 'dart:convert';

import 'package:http/http.dart' as http;

Future<void> sendNotification() async {
  final baseUrl = Uri.parse('https://fcm.googleapis.com/fcm/send');
  final data = {
    "notification": {"body": "this is body", "title": "This is title"},
    "priority": "high",
    "data": {
      "id": "1",
      "status": "done",
      "message": "this is body",
      // "userFullName": userFullName,
      // "userMessage": userMessage,
      // "userNumber": userNumber,
    },
    "to": "/topics/monthly"
  };
  final encodedData = jsonEncode(data);
  final response = await http.post(
    baseUrl,
    headers: {
      'content-type': 'application/json',
      'Authorization':
          'key=AAAAK94XISc:APA91bH51bMAr6KEI1QnJps1SOWFBhDG96j9uRPVMDnrBIx6zkXXTtkptNUv2Vh93SFKrZcye0hHuwVtRLUVdNu4Tg2IiMj1cQKftr7oYk7-LHgW_hZ1X6znbrVphgDPC_diyo55yWMD',
    },
    body: encodedData,
  );
  if (response.statusCode == 200) {
    print("Notification sent");
  } else {
    print("Notification not sent");
  }
}
