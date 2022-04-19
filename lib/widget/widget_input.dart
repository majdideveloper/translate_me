import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:translat_me/provider/app_provider.dart';
import 'package:translat_me/utils/my_theme.dart';

class WidgetInput extends StatelessWidget {
  const WidgetInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AppProvider appProvider = context.read<AppProvider>();
    return Stack(
      children: [
        TextField(
          maxLines: 3,
          controller: appProvider.searchController,
          cursorColor: Colors.black,
          style: styleWord,
          decoration: InputDecoration(
            filled: true,
            fillColor: myColor,
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(25)),
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
      ],
    );
  }
}
