import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:silk_annotation/silk_annotation.dart';
import 'package:silk_demo_00/alpha/alpha.pod.dart';

@SilkGroup(name: 'Alpha')
class AlphaReaderWidget extends ConsumerWidget {
  const AlphaReaderWidget({super.key});

  @override
  build(context, ref) {
    ref.read(alphaProvider);
    return Text("Alpha Reader");
  }
}

@SilkGroup(name: 'Alpha')
class AlphaWatcherWidget extends ConsumerWidget {
  const AlphaWatcherWidget({super.key});

  @override
  build(context, ref) {
    ref.watch(alphaProvider);
    return Text("Alpha Watcher");
  }
}
