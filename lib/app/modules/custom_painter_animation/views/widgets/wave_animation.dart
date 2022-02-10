import 'package:flutter/material.dart';
import 'package:flutter_atlanta_animation_examples/app/modules/custom_painter_animation/views/painters/wave_painter.dart';

class WaveAnimation extends ImplicitlyAnimatedWidget {
  final int position;
  final int sections;

  const WaveAnimation(
      {required this.position, required this.sections, Key? key})
      : super(
            key: key,
            duration: const Duration(milliseconds: 700),
            curve: Curves.bounceOut);

  @override
  ImplicitlyAnimatedWidgetState<ImplicitlyAnimatedWidget> createState() {
    return _WaveAnimationState();
  }
}

class _WaveAnimationState extends ImplicitlyAnimatedWidgetState<WaveAnimation> {
  Tween<double>? _waveTween;

  @override
  void initState() {
    super.initState();
    animation.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: WavePainter(
        waveCenter: _waveTween?.evaluate(animation) ?? 0,
      ),
    );
  }

  @override
  void forEachTween(TweenVisitor<dynamic> visitor) {
    _waveTween = visitor(_waveTween, (widget.position) / (widget.sections),
        (value) => Tween<double>(begin: value)) as Tween<double>?;
  }
}
