import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:rankings/src/application/authentication/controllers/authentication_controller.dart';
import 'package:rankings/ui_kit/src/animations/particles.dart';
import 'package:rankings/ui_kit/src/animations/text_reveal_widget.dart';
import 'package:rankings/ui_kit/ui_kit.dart';

part 'widgets/bottom_section.dart';
part 'widgets/top_section.dart';

class AuthenticationPage extends HookWidget {
  const AuthenticationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          _TopSection(),
          _BottomSection(),
        ],
      ),
    );
  }
}
