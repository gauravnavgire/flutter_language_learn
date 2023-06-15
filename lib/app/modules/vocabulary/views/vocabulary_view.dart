import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/vocabulary_controller.dart';

class VocabularyView extends GetView<VocabularyController> {
  const VocabularyView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('VocabularyView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'VocabularyView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
