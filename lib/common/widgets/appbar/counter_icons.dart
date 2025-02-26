import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/utils/constants/colors.dart';

class CustomCounterIcons extends StatelessWidget {
  const CustomCounterIcons({
    super.key,
    required this.onIconPress,
    required this.cartIcon,
    required this.label,
    required this.iconColor,
  });

  final VoidCallback onIconPress;
  final IconData cartIcon;
  final String label;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
            onPressed: onIconPress,
            icon: Icon(
              cartIcon,
              color: iconColor,
            )),
        Positioned(
          right: 0,
          child: Container(
              width: 18,
              height: 18,
              decoration: BoxDecoration(
                color: MyAppColors.black,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Text(
                  label,
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .apply(color: MyAppColors.white, fontSizeFactor: 0.8),
                ),
              )),
        )
      ],
    );
  }
}
