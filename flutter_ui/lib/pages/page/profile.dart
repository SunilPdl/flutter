import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("profile"),
            ElevatedButton(
              onPressed: () {
                context.go('/contactus');
              },
              child: const Text("go to contact us"),
            ),
          ],
        ),
      ),
    );
  }
}
