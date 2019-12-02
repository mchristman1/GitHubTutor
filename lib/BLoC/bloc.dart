//bloc.dart

import 'package:flutter/material.dart';

/* All of this code is taken directly from Ray Wenderlich's Tutorial,
* https://www.raywenderlich.com/4074597-getting-started-with-the-bloc-pattern */

/* ======== Bloc Pattern Generic Classes ======== */
abstract class Bloc {
  void dispose();
}

class BlocProvider<T extends Bloc> extends StatefulWidget {
  final Widget child;
  final T bloc;

  const BlocProvider({Key key, @required this.bloc, @required this.child})
      : super(key: key);

  static T of<T extends Bloc>(BuildContext context) {
    final type = _providerType<BlocProvider<T>>();
    final BlocProvider<T> provider = context.ancestorWidgetOfExactType(type);
    return provider.bloc;
  }

  static Type _providerType<T>() => T;

  @override
  State createState() => _BlocProviderState();
}

class _BlocProviderState extends State<BlocProvider> {
  @override
  Widget build(BuildContext context) => widget.child;

  @override
  void dispose() {
    widget.bloc.dispose();
    super.dispose();
  }
}
/* ======== End Bloc Pattern Generic Classes ======== */
