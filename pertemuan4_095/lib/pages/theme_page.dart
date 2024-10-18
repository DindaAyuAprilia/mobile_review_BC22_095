import 'package:flutter/material.dart';

class ThemeScreen extends StatelessWidget {
  final VoidCallback toggleTheme;

  const ThemeScreen({super.key, required this.toggleTheme});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('2209106095'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Headline Large',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(height: 20),
            Text(
              'Body Large',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Text(
              'Body Medium',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              'Body Small',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add your button logic here
              },
              child: const Text('Elevated Button'),
            ),
            const SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {
                // Add your button logic here
              },
              child: const Text('Outlined Button'),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {
                // Add your button logic here
              },
              child: const Text('Text Button'),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: toggleTheme,
              child: const Text('Toggle Light/Dark Mode'),
            ),
          ],
        ),
      ),
    );
  }
}