import 'package:flutter/material.dart';

class SectionHeading extends StatelessWidget {
  const SectionHeading({
    super.key,
    this.textColor,
    this.showActionButton=true,
    required this.title,
    this.buttonTitle= "View All",
    this.onBtnPressed,
  });

  final Color? textColor;
  final bool showActionButton;
  final String title, buttonTitle;
  final VoidCallback? onBtnPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headlineSmall!.apply(color: textColor),
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
        if(showActionButton) TextButton(onPressed: onBtnPressed, child: Text(buttonTitle)),
      ],
    );
  }
}