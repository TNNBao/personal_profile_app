import 'package:flutter/material.dart';
import '../widgets/profile_card.dart';
import '../widgets/skill_chip.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final List<String> skills = const [
    'Flutter',
    'Dart',
    'Firebase',
    'UI/UX Design',
    'Git',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Profile')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProfileCard(
              name: 'Trần Nguyễn Ngọc Bảo',
              title: 'Flutter Developer',
              imagePath: 'assets/images/profile.jpg',
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Wrap(
                spacing: 8,
                runSpacing: 8,
                children: skills
                    .map((skill) => SkillChip(skill: skill))
                    .toList(),
              ),
            ),
            const SizedBox(height: 24),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('baotnn.22git@vku.udn.vn'),
            ),
            ListTile(
              leading: Icon(Icons.link),
              title: Text('https://github.com/TNNBao'),
            ),
          ],
        ),
      ),
    );
  }
}
