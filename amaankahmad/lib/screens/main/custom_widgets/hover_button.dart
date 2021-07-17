import 'package:flutter/material.dart';

class HoverButton extends StatefulWidget {
  const HoverButton({
    Key? key,
    required this.builder,
  }) : super(key: key);

  final Widget Function(bool isHovering) builder;

  @override
  _HoverButtonState createState() => _HoverButtonState();
}

class _HoverButtonState extends State<HoverButton> {
  bool isHovering = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (enter) => onEntered(true),
      onExit: (enter) => onEntered(false),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        child: Container(
          child: widget.builder(isHovering),
        ),
      ),
    );
  }

  onEntered(bool isHovered) => setState(() {
        this.isHovering = isHovered;
      });
}
