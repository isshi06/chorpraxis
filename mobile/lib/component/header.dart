import 'package:flutter/material.dart';

class SampleHeader extends StatelessWidget implements PreferredSizeWidget {
  const SampleHeader({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Headerです'),
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
    );
  }
}
