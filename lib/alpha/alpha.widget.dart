import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:silk_annotation/silk_annotation.dart';
import 'package:silk_demo_00/alpha/alpha.pod.dart';

class AlphaR1Widget extends ConsumerWidget {
  const AlphaR1Widget({super.key});

  @override
  build(context, ref) => Column(
        children: [
          Text(ref.read(alphaProvider)),
          Text(ref.read(alphaProvider)),
        ],
      );
}

class AlphaR2Widget extends ConsumerWidget {
  const AlphaR2Widget({super.key});

  @override
  build(context, ref) => Text(ref.read(alphaProvider));
}

class AlphaR3Widget extends ConsumerStatefulWidget {
  const AlphaR3Widget({super.key});

  @override
  ConsumerState createState() => AlphaR3WidgetState();
}

@SilkTheme(color: '#00EEAA', textColor: '#006600')
class AlphaR3WidgetState extends ConsumerState<AlphaR3Widget> {
  @override
  build(context) => Column(
        children: [
          Text(ref.watch(alphaProvider)),
          Text(ref.watch(alphaProvider)),
          Text(ref.watch(alphaProvider)),
        ],
      );
}

class _AlphaR4Widget extends ConsumerWidget {
  const _AlphaR4Widget();

  @override
  build(context, ref) {
    // TODO(robert): Not found! BIGBUG here
    ref.watch(alphaProvider);
    ref.listen(alphaProvider, (previous, next) {});
    return Text("Alpha R4");
  }
}
