import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:silk_annotation/silk_annotation.dart';

part 'beta.pod.g.dart';

@SilkGroup(name: 'Beta')
@riverpod
Stream<String> beta(BetaRef ref) => Stream.value("Message");
