import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:silk_demo_00/omega/omega.pod.dart';

class OmegaWidget extends ConsumerWidget {
  const OmegaWidget({super.key});

  build(context, ref) {
    ref.watch(omegaProvider);
    return Text("Omega");
  }
}
