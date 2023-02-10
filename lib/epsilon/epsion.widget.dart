import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:silk_annotation/silk_annotation.dart';
import 'package:silk_demo_00/epsilon/epsilon.pod.dart';

@SilkGroup(name: 'Epsilon')
class EpsilonW1 extends ConsumerWidget {
  const EpsilonW1({super.key});

  @override
  build(_, ref) {
    // TODO(robert): not registered
    final rs = ref.exists(epsilonProvider);
    return Text("Epsilon");
  }
}

@SilkGroup(name: 'Epsilon')
class EpsilonW3 extends ConsumerWidget {
  const EpsilonW3({super.key});

  @override
  build(_, ref) {
    ref.watch(epsilonProvider);
    return Text("Epsilon");
  }
}

@SilkGroup(name: 'Epsilon')
class EpsilonW2 extends ConsumerWidget {
  const EpsilonW2({super.key});

  @override
  build(_, ref) {
    // TODO(robert): should warn
    ref.listenManual(epsilonProvider, (p, n) {});
    return Text("Epsilon");
  }
}
