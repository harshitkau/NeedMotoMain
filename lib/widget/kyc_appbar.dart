import 'package:flutter/material.dart';

class KycAppBar extends StatelessWidget implements PreferredSizeWidget {
  const KycAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        onPressed: () {
          // Handle menu button press
        },
      ),
      title: Text(
          "YOUR KYC",
        style: TextStyle(
          color: Colors.black,
        ),
      ),

    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}


