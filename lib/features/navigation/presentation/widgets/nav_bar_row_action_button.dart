import 'package:edf3/utils/enums/assets_enum.dart';
import 'package:edf3/utils/theme.dart';
import 'package:flutter/material.dart';

class NavBarRowActionButton extends StatelessWidget {
  final ValueChanged<int> onTap;
  const NavBarRowActionButton({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: AppTheme.hightLighted,
        onPressed: () {
          onTap(2);
        },
        child: Image.asset(
          AppIconsEnum.qr.getPath(),
          color: Colors.white,
        ),
        // ),
      ),
    );
  }
}
