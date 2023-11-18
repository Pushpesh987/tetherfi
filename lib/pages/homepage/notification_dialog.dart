// notification_dialog.dart
import 'package:flutter/material.dart';

class NotificationDialog {
  static void show(BuildContext context) {
    showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Notifications'),
            IconButton(
              icon: Icon(Icons.close),
              onPressed: () {
                Navigator.pop(context); // Close the dialog
              },
            ),
          ],
        ),
        content: Container(
          height: 120.0, // Adjust the height as needed
          child: const Center(
            child: Text('No Notifications'),
          ),
        ),
      ),
    );
  }
}
