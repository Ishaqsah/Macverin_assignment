import 'package:flutter/material.dart';

class UserDatascreen extends StatelessWidget {
  const UserDatascreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
      child: Center(
        child: Text('User data'),
      ),
      ),
    );
  }
}