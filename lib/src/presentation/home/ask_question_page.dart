import 'package:flutter/material.dart';
import 'package:rankings/ui_kit/src/widgets/text_field.dart';

class AskQuestionPage extends StatelessWidget {
  const AskQuestionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: CustomTextField(
          autofocus: true,
          controller: TextEditingController(),
          hintText: 'Ask a question',
          type: TextFieldType.underlined,
        ),
      ),
    );
  }
}
