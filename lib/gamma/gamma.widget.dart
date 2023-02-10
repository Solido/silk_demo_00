import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'gamma.pod.dart';

class GammaWidget extends ConsumerWidget {
  const GammaWidget({super.key});

  @override
  build(_, ref) {
    ref.invalidate(gammaProvider);
    final rs = ref.refresh(gammaProvider);
    return Text("Gamma");
  }
}
