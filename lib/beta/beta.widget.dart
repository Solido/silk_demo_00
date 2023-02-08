import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:silk_annotation/silk_annotation.dart';
import 'package:silk_demo_00/beta/beta.pod.dart';

import '../alpha/alpha.pod.dart';

@SilkGroup(name: 'Beta')
class BetaWidget extends ConsumerStatefulWidget {
  const BetaWidget({super.key});

  @override
  ConsumerState createState() => _BetaWidgetState();
}

class _BetaWidgetState extends ConsumerState<BetaWidget> {
  @override
  build(context) {
    ref.watch(betaProvider);
    return Text("Beta Reader");
  }

  @override
  void initState() {
    super.initState();
    ref.listenManual(alphaProvider, (previous, next) {});
  }
}
