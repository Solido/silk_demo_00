import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:silk_demo_00/alpha/alpha.pod.dart';

part 'omega.pod.g.dart';

@riverpod
String omega(OmegaRef ref) {
  ref.notifyListeners();
  ref.watch(alphaProvider.select((value) => value));
  return '*';
}
