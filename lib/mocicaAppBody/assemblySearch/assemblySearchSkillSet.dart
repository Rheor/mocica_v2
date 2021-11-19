import 'package:flutter/material.dart';
import '../../helpers/tagsList.dart';

class AssemblySearchSkillSet extends StatelessWidget {
  static const List<String> tags = const [
    'Jardin',
    'Campagne',
    'Hébergement',
    'Permaculture',
    'Potager',
    'Autonomie',
    'Naturopathie',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Savoir-faire',
        ),
        TagsList(tags: tags)
      ],
    );
  }
}
