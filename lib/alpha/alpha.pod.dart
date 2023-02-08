import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:silk_annotation/silk_annotation.dart';

part 'alpha.pod.g.dart';

@SilkGroup(name: 'Alpha')
@riverpod
Future<String> alpha(AlphaRef ref) => Future.value("Message");
