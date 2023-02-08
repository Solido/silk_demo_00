import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:silk_annotation/silk_annotation.dart';

part 'delta.pod.g.dart';

@SilkGroup(name: 'Delta')
@Riverpod()
class DeltaRm extends _$DeltaRm {
  @override
  double build() {
    ref.invalidateSelf();
    ref.onDispose(() => print("Dispose"));
    ref.onRemoveListener(() => print("Remove listeners"));
    return .1;
  }
}

@SilkGroup(name: 'Delta')
@Riverpod()
class DeltaAdd extends _$DeltaAdd {
  @override
  double build() {
    ref.onResume(() => print("Resume"));
    ref.onAddListener(() => print("Add listeners"));
    return .1;
  }
}
