import 'package:d_view/d_view.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/containers.dart';
import 'package:flutter/src/widgets/framework.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key, required this.title, required this.description});
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DView.textTitle(title),
            DView.spaceHeight(),
            DView.error(description),
          ],
        ),
      ),
    );
  }
}
