import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:silk_annotation/silk_annotation.dart';
import 'package:silk_demo_00/delta/delta.pod.dart';

@SilkGroup(name: 'Delta')
class DeltaWidget extends ConsumerWidget {
  const DeltaWidget({super.key});

  @override
  build(_, ref) {
    final rs = ref.refresh(deltaAddProvider);
    return Text("Delta");
  }
}
