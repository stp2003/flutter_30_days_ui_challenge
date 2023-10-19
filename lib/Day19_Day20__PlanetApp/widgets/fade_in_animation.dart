import 'package:flutter/material.dart';

class FadeInAnimation extends StatefulWidget {
  final Widget child;
  final MyAnimation animatePosition;
  final int durationInMs, delayInMs;

  const FadeInAnimation({
    super.key,
    required this.child,
    required this.animatePosition,
    required this.durationInMs,
    required this.delayInMs,
  });

  @override
  State<FadeInAnimation> createState() => _FadeInAnimationState();
}

class _FadeInAnimationState extends State<FadeInAnimation> {
  bool? animate;

  @override
  void initState() {
    super.initState();
    changeAnimation();
  }

  Future changeAnimation() async {
    animate = false;
    await Future.delayed(Duration(milliseconds: widget.delayInMs));
    if (mounted) {
      setState(() {
        animate = true;
      });
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: Duration(milliseconds: widget.durationInMs),
      curve: Curves.easeInOut,
      top: animate!
          ? widget.animatePosition.topAfter
          : widget.animatePosition.topBefore,
      left: animate!
          ? widget.animatePosition.leftAfter
          : widget.animatePosition.leftBefore,
      bottom: animate!
          ? widget.animatePosition.bottomAfter
          : widget.animatePosition.bottomBefore,
      right: animate!
          ? widget.animatePosition.rightAfter
          : widget.animatePosition.rightBefore,
      child: widget.child,
    );
  }
}

class MyAnimation {
  final double? topAfter, leftAfter, bottomAfter, rightAfter;
  final double? topBefore, leftBefore, bottomBefore, rightBefore;

  MyAnimation({
    this.topAfter,
    this.leftAfter,
    this.bottomAfter,
    this.rightAfter,
    this.topBefore,
    this.leftBefore,
    this.bottomBefore,
    this.rightBefore,
  });
}
