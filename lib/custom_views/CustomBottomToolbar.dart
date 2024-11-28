import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../colors.dart';

class CustomBottomToolbar extends StatelessWidget {
  const CustomBottomToolbar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: AppColors.background, // Use the custom background color here
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildToolbarItem(Icons.local_shipping, 'Delivery', () {
              print('Delivery tapped');
            }),
            _buildToolbarItem(Icons.upload, 'Upload', () {
              print('Upload tapped');
            }),
            _buildToolbarItem(Icons.video_call, 'Video', () {
              print('Video tapped');
            }),
            _buildToolbarItem(Icons.widgets, 'Widgets', () {
              print('Widgets tapped');
            }),
          ],
        ),
      ),
    );
  }

  // Function to build each toolbar item
  Widget _buildToolbarItem(IconData icon, String label, VoidCallback onPressed) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 30, color: Colors.white),
          const SizedBox(height: 5),
          Text(label, style: const TextStyle(fontSize: 12, color: Colors.white)),
        ],
      ),
    );
  }
}