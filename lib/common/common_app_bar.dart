import 'package:flutter/material.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;

  const CommonAppBar({super.key, required this.title, this.actions});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              "assets/images/asda_logo.png",
              fit: BoxFit.contain,
              height: 32,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(
                title,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context,
                    '/login',
                    (Route<dynamic> route) =>
                        false // Navigate to login page and remove all previous routes
                    );
              },
              icon: const Icon(
                Icons.logout,
                color: Colors.black,
              ))
        ]);
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
