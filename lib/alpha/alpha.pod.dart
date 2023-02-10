import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:silk_demo_00/omega/omega.pod.dart';

part 'alpha.pod.g.dart';

@riverpod
String alpha(AlphaRef ref) {
  ref.listenSelf((previous, next) => print(next));
  ref.read(omegaProvider);
  return "Alpha";
}
