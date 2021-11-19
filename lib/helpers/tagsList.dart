import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_tags/flutter_tags.dart';

class TagsList extends StatelessWidget {
  final List<String> tags;

  const TagsList({required this.tags});

  @override
  Widget build(BuildContext context) {
    return Tags(
      itemCount: tags.length,
      itemBuilder: (int index) {
        final _tag = tags[index];

        return ItemTags(
          key: Key(index.toString()),
          index: index,
          title: _tag,
          active: true,
          textActiveColor: Colors.black,
          activeColor: Color(0xFF96c11e),
        );
      },
    );
  }
}
