import 'package:flutter/material.dart';

import '../widgets/main_app_bar.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  final String date = '12 августа 2023';
  final String location = 'Санкт-Петербург';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MainAppBar(),
      body: Placeholder(),
    );
  }
}
