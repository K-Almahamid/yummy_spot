import 'package:flutter/material.dart';

class GetBoxOffSet extends StatefulWidget {
  final Widget child;
  final Function(Offset offset) offset;

  const GetBoxOffSet({
    Key? key,
    required this.child,
    required this.offset,
  }) : super(key: key);

  @override
  State<GetBoxOffSet> createState() => _GetBoxOffSetState();
}

class _GetBoxOffSetState extends State<GetBoxOffSet> {
  GlobalKey widgetKey = GlobalKey();
  late Offset offset;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final box = widgetKey.currentContext?.findRenderObject() as RenderBox;
      offset = box.localToGlobal(Offset.zero);
      widget.offset(offset);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      key: widgetKey,
      child: widget.child,
    );
  }
}
