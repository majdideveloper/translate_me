import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:translat_me/provider/app_provider.dart';
import 'package:translat_me/widget/my_button.dart';
import 'package:translat_me/widget/widget_input.dart';
import 'package:translat_me/widget/widget_output.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({Key? key}) : super(key: key);

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  @override
  Widget build(BuildContext context) {
    final AppProvider appProvider = context.read<AppProvider>();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0.0,
            centerTitle: false,
            title: const Text('Derja Tunisia')),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SizedBox(
            width: 600,
            child: SingleChildScrollView(
              reverse: true,
              child: Column(
                children: [
                  WidgetInput(),
                  SizedBox(
                    height: 25,
                  ),
                  WidgetOutput(),
                  SizedBox(
                    height: 25,
                  ),
                  MyButton(
                    word: appProvider.searchController.text,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
