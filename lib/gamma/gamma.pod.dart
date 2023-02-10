import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:silk_annotation/silk_annotation.dart';

part 'gamma.pod.g.dart';

@SilkTheme(color: '#6652ba', textColor: '#FFEEEE')
@Riverpod()
class Gamma extends _$Gamma {
  @override
  double build() {
    ref.invalidateSelf();
    ref.onDispose(() => print("Dispose"));
    ref.onRemoveListener(() => print("Remove listeners"));
    return .1;
  }
}
