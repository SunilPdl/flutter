import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("contactUs"),
            ElevatedButton(
              onPressed: () {
                context.go('/aboutus');
              },
              child: const Text('go to aboutus'),
            ),
          ],
        ),
      ),
    );
  }
}
