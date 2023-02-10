import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'beta.pod.g.dart';

@riverpod
Stream<String> beta(BetaRef ref) => Stream.value("Message");
