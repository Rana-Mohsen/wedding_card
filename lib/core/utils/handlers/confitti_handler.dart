import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';

class ConfettiHandler {
  final ConfettiController _controller;

  ConfettiHandler({required Duration duration})
      : _controller = ConfettiController(duration: duration);

  void dispose() {
    _controller.dispose();
  }

  void play() {
    _controller.play();
  }

  Widget buildConfettiWidget() {
    return ConfettiWidget(
      confettiController: _controller,
      minimumSize: const Size(10, 6),
      maximumSize: const Size(15, 10),
      numberOfParticles: 20,
      blastDirectionality: BlastDirectionality.explosive,
      shouldLoop: false,
      colors: const [
        Colors.red,
        Colors.blue,
        Colors.grey,
        Colors.yellow,
        Colors.orange,
        Colors.pinkAccent
      ],
    );
  }
}
