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
      spacing: MyAppSizes.spaceBtwItems,
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
          width: MyAppSizes.spaceBtwItems,
        ),
        Text.rich(TextSpan(children: [
          TextSpan(
              text: '${MyAppTexts.iAgreeTo} ',
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: MyAppTexts.privacyPolicy,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .apply(
                    color:
                        dark ? MyAppColors.white : MyAppColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor:
                        dark ? MyAppColors.white : MyAppColors.primary,
                  )),
          TextSpan(
              text: ' ${MyAppTexts.and}',
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: MyAppTexts.termsOfUse,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .apply(
                    color:
                        dark ? MyAppColors.white : MyAppColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor:
                        dark ? MyAppColors.white : MyAppColors.primary,
                  )),
        ]))
      ],
    );
  }
}