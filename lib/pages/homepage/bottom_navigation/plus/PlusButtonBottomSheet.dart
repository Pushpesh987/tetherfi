// PlusButtonBottomSheet.dart
import 'package:flutter/material.dart';

class PlusButtonBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0, // Adjust the width as needed
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          buildButton(context, 'SMS', Icons.sms),
          buildDivider(),
          buildButton(context, 'Voice', Icons.call),
          buildDivider(),
          buildButton(context, 'Mail', Icons.mail),
        ],
      ),
    );
  }

  Widget buildButton(BuildContext context, String buttonText, IconData icon) {
    return GestureDetector(
      onTap: () {
        // Handle button tap
        Navigator.pop(context);
        // Add your logic for each button here
        switch (buttonText) {
          case 'SMS':
            // Handle SMS button tap
            break;
          case 'Voice':
            // Handle Voice button tap
            break;
          case 'Mail':
            // Handle Mail button tap
            break;
        }
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 24.0,
            color: Color(0xFF411B52), // Set your desired icon color
          ),
          SizedBox(width: 8.0), // Adjust spacing between icon and text
          Text(
            buttonText,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Color(0xFF411B52), // Set your desired text color
            ),
          ),
        ],
      ),
    );
  }

  Widget buildDivider() {
    return Divider(
      height: 20.0, // Adjust the height of the divider
      color: Colors.grey, // Set your desired divider color
    );
  }
}
