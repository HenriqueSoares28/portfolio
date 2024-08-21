import 'package:flutter/material.dart';
import '../models/project.dart';
import '../utils/launch_url.dart';

class ProjectCard extends StatelessWidget {
  final Project project;

  const ProjectCard({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              project.title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(project.description),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                launchURL(project.url);
              },
              child: const Text('Ver no GitHub'),
            ),
          ],
        ),
      ),
    );
  }
}
