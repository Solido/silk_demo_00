import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:silk_annotation/silk_annotation.dart';
import 'package:silk_demo_00/delta/delta.pod.dart';

part 'epsilon.pod.g.dart';

@SilkGroup(name: 'Epsilon')
@riverpod
Stream<double> epsilon(EpsilonRef ref) {
  ref.read(deltaAddProvider);
  return Stream.value(.0);
}
