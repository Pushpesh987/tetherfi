// MyBottomNavigationBar.dart
import 'package:flutter/material.dart';
import 'plus/PlusButtonBottomSheet.dart';

class MyBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  MyBottomNavigationBar({
    required this.selectedIndex,
    required this.onItemTapped,
  });

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return PlusButtonBottomSheet(); // Use the new file here
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0xFF411B52).withOpacity(0.25),
            spreadRadius: 2,
            blurRadius: 4,
            offset: Offset(0, -2),
          ),
        ],
      ),
      child: BottomNavigationBar(
        elevation: 3.0, // Adjust the elevation as needed
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 30.0),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add, size: 30.0),
            label: 'Plus',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.headset_mic, size: 30.0),
            label: 'Device Connection',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, size: 30.0),
            label: 'Profile',
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Color(0xFF331640),
        unselectedItemColor: Color(0xFF331640),
        onTap: (index) {
          if (index == 1) {
            _showBottomSheet(context);
          } else {
            onItemTapped(index);
          }
        },
      ),
    );
  }
}
