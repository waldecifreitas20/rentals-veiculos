import 'package:flutter/material.dart';

class ButtonsRow extends StatelessWidget {
  const ButtonsRow({
    super.key,
    required this.leftButtonText,
    required this.onPressedLeftButton,
    required this.rightButtonText,
    required this.onPressedRightButton,
  });

  final String leftButtonText;
  final String rightButtonText;

  final void Function() onPressedLeftButton;
  final void Function() onPressedRightButton;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
                side: BorderSide(
                    width: 3, color: Theme.of(context).colorScheme.primary)),
            onPressed: onPressedLeftButton,
            child: Text(leftButtonText),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: ElevatedButton(
            onPressed: onPressedRightButton,
            child: Text(rightButtonText),
          ),
        )
      ],
    );
  }
}
