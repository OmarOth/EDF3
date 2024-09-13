import 'package:edf3/utils/enums/assets_enum.dart';
import 'package:edf3/utils/theme.dart';
import 'package:flutter/material.dart';

class CustomNavBarRowItem extends StatelessWidget {
  final AppIconsEnum icon;
  final String text;
  final bool isHightLighted;
  final ValueChanged onTap;
  final int index;
  const CustomNavBarRowItem({
    super.key,
    required this.icon,
    required this.text,
    required this.isHightLighted,
    required this.onTap,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final Color baseColor =
        isHightLighted ? AppTheme.hightLighted : AppTheme.notHightLighted;
    final Image image = Image.asset(
      icon.getPath(),
      height: 24,
      width: 24,
      color: baseColor,
    );
    return ClipOval(
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          splashColor: Colors.grey[300]?.withOpacity(0.7),
          onTap: () {
            onTap(index);
          },
          child: SizedBox(
            height: 75,
            width: 70,
            child: Column(
              children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 17,
                          child: Divider(
                            thickness: 2,
                            color: isHightLighted && index != 2
                                ? baseColor
                                : Colors.transparent,
                            height: 20,
                          ),
                        )
                      ],
                    ),
                  ] +
                  (icon != AppIconsEnum.qr
                      ? [
                          image,
                          Text(text),
                        ]
                      : []),
            ),
          ),
        ),
      ),
    );
  }
}
