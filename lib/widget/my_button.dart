import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:translat_me/provider/app_provider.dart';
import 'package:translat_me/utils/my_theme.dart';

class MyButton extends StatelessWidget {
  final String? word;
  const MyButton({Key? key, required this.word}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AppProvider appProvider = context.read<AppProvider>();
    return ElevatedButton(
        onPressed: () {
          appProvider.giveMeTheWord(word!);
        },
        child: Text(
          'Translate me',
          style: styleWord,
        ));
  }
}
