import 'package:flutter/material.dart';
import 'package:yummy_spot/constants/app_colors.dart';
import 'package:yummy_spot/constants/app_styles.dart';
import 'package:yummy_spot/constants/dimensions.dart';

class ExpandableText extends StatefulWidget {
  final String text;

  const ExpandableText({Key? key, required this.text}) : super(key: key);

  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  late String firstHalf;
  late String secondHalf;
  bool hiddenText = true;

  double textHeight = Dimensions.h200;

  @override
  void initState() {
    super.initState();
    if (widget.text.length > textHeight) {
      firstHalf = widget.text.substring(0, textHeight.toInt());
      secondHalf =
          widget.text.substring(textHeight.toInt(), widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: Dimensions.w10),
        child: secondHalf.isEmpty
            ? Text(firstHalf)
            : Column(
                children: [
                  Text(
                    hiddenText ? ('$firstHalf...') : (firstHalf + secondHalf),
                    style: getRegularStyle(
                      color: AppColors.black,
                      fontSize: 14,
                    ).copyWith(letterSpacing: -0.5, wordSpacing: 2),
                  ),
                  Row(
                    children: [
                      Text(
                        hiddenText ? 'Show more' : 'Show less',
                        style: getSemiBoldStyle(
                          color: hiddenText ? AppColors.primary : AppColors.red,
                          fontSize: 14,
                        ),
                      ),
                      Icon(
                        hiddenText
                            ? Icons.arrow_drop_down
                            : Icons.arrow_drop_up,
                        color: hiddenText ? AppColors.primary : AppColors.red,
                      ),
                    ],
                  )
                ],
              ),
      ),
      onTap: () => setState(() => hiddenText = !hiddenText),
    );
  }
}
