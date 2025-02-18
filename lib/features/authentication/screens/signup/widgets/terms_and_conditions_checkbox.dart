import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/utils/constants/colors.dart';
import 'package:flutter_ecommerce/utils/constants/sizes.dart';
import 'package:flutter_ecommerce/utils/constants/text_strings.dart';

class TermsAndConditionsCheckBox extends StatelessWidget {
  const TermsAndConditionsCheckBox({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: PSizes.spaceBtwItems,
      runSpacing:
          12, // Adjust this for better spacing in smaller screens
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Checkbox(
            value: true,
            onChanged: (value) {},
          ),
        ),
        const SizedBox(
          width: PSizes.spaceBtwItems,
        ),
        Text.rich(TextSpan(children: [
          TextSpan(
              text: '${PTexts.iAgreeTo} ',
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: PTexts.privacyPolicy,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .apply(
                    color:
                        dark ? PColors.white : PColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor:
                        dark ? PColors.white : PColors.primary,
                  )),
          TextSpan(
              text: ' ${PTexts.and}',
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: PTexts.termsOfUse,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .apply(
                    color:
                        dark ? PColors.white : PColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor:
                        dark ? PColors.white : PColors.primary,
                  )),
        ]))
      ],
    );
  }
}