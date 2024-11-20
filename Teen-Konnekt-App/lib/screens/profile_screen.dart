import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontFamily: 'Roboto',
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          SizedBox(height: 30),
          // Profile Picture
          CircleAvatar(
            radius: 55,
            backgroundImage: AssetImage(
                'assets/profile_pic.png'), // Adjust with your image asset
          ),
          SizedBox(height: 12),
          Center(
            child: Text(
              'John Landry',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                fontFamily: 'Roboto',
                color: Colors.blueGrey[900],
              ),
            ),
          ),
          SizedBox(height: 25),

          // Profile Options
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              children: [
                _buildProfileOption(context, 'Account', Icons.account_circle),
                _buildProfileOption(context, 'Personal Info', Icons.person),
                _buildProfileOption(context, 'Privacy', Icons.lock),
                _buildProfileOption(context, 'Languages', Icons.language),
                _buildProfileOption(context, 'Help', Icons.help_outline),
                _buildProfileOption(context, 'Log out', Icons.logout),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProfileOption(
      BuildContext context, String title, IconData icon) {
    return Card(
      elevation: 2,
      margin: EdgeInsets.symmetric(vertical: 6),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: Icon(icon, color: Colors.green, size: 28),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w500,
            color: Colors.blueGrey[800],
          ),
        ),
        trailing: Icon(Icons.arrow_forward_ios, size: 18, color: Colors.grey),
        onTap: () {
          // Add navigation or action for each item if needed
        },
      ),
    );
  }
}
