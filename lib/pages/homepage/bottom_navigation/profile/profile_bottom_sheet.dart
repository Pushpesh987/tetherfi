import 'package:flutter/material.dart';

class ProfileBottomSheet extends StatefulWidget {
  final BuildContext context;

  ProfileBottomSheet(this.context);

  @override
  _ProfileBottomSheetState createState() => _ProfileBottomSheetState();
}

class _ProfileBottomSheetState extends State<ProfileBottomSheet> {
  String availabilityStatus = 'Available';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildProfileContainer(),
        _buildDivider(),
        Expanded(
          child: ListView(
            shrinkWrap: true,
            children: [
              _buildOption('1 - Paid Break', showTrailingIcon: true, availability: 'Paid Break'),
              _buildDivider(),
              _buildOption('2 - TM Feedback', showTrailingIcon: true, availability: 'TM Feedback'),
              _buildDivider(),
              _buildOption('3 - Fulfillment', showTrailingIcon: true, availability: 'Fulfillment'),
              _buildDivider(),
              _buildOption('4 - Meeting/Training', showTrailingIcon: true, availability: 'Meeting/Training'),
              _buildDivider(),
              _buildOption('5 - Computer Problem', showTrailingIcon: true, availability: 'Computer Problem'),
              _buildDivider(),
              _buildOption('6 - TPIN2', showTrailingIcon: true, availability: 'TPIN2'),
              _buildDivider(),
              _buildOption('7 - Call Outbound', showTrailingIcon: true, availability: 'Call Outbound'),
              _buildDivider(),
              _buildOption('8 - Logout', showLogoutIcon: true, availability: 'Logout'),
              _buildDivider(),
              _buildOption('9 - Available', showTrailingIcon: true, availability: 'Available'),
              _buildDivider(),
              _buildOption('10 - Callback', showTrailingIcon: true, availability: 'Callback'),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildProfileContainer() {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 80.0,
            height: 80.0,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Center(
              child: Icon(
                Icons.person,
                size: 40.0,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(width: 16.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'John Doe',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4.0),
                Text(
                  availabilityStatus,
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.green,
                  ),
                ),
                SizedBox(height: 4.0),
                Row(
                  children: [
                    Icon(
                      Icons.access_time,
                      size: 16.0,
                      color: Colors.grey,
                    ),
                    SizedBox(width: 4.0),
                    Text(
                      '00:30:00', // Replace with your timer value
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOption(String label,
      {bool showTrailingIcon = false, bool showLogoutIcon = false, String availability = ''}) {
    return ListTile(
      title: Text(label),
      trailing: showTrailingIcon
          ? Icon(
              Icons.remove_circle,
              color: const Color.fromARGB(
                  255, 0, 0, 0), // Customize the color of the minus icon
            )
          : (showLogoutIcon
              ? Icon(
                  Icons.logout,
                  color: Colors.black, // Customize the color of the logout icon
                )
              : null),
      onTap: () {
        // Handle the tap on each option
        if (availability.isNotEmpty) {
          // Update availability status only if it's not empty
          setState(() {
            availabilityStatus = availability;
          });
        }
      },
    );
  }

  Widget _buildDivider() {
    return Divider(
      color: Colors.grey,
      thickness: 1.0,
    );
  }
}
