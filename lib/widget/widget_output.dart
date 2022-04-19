import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:translat_me/utils/my_theme.dart';

import '../provider/app_provider.dart';

class WidgetOutput extends StatelessWidget {
  const WidgetOutput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AppProvider appProvider = context.watch<AppProvider>();
    return Stack(children: [
      Container(
        padding: const EdgeInsets.all(16.0),
        height: 150,
        child: Text(
          appProvider.word ?? '',
          style: styleWord,
        ),
        width: double.infinity,
        decoration: BoxDecoration(
          color: myColor,
          borderRadius: BorderRadius.circular(25),
        ),
      ),
      Positioned(
        right: 10,
        top: 10,
        child: Image.network(
          'https://m.media-amazon.com/images/I/31SspfBemCL._AC_SX450_.jpg',
          width: 35,
          height: 35,
        ),
      )
    ]);
  }
}
