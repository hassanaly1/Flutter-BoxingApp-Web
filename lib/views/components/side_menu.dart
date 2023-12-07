import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rtsc_web/utils/constants/colors.dart';
import 'package:sidebarx/sidebarx.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
    required SidebarXController controller,
  })  : _controller = controller,
        super(key: key);

  final SidebarXController _controller;

  @override
  Widget build(BuildContext context) {
    return SidebarX(
      controller: _controller,
      theme: SidebarXTheme(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: AppColors.canvasColor,
          borderRadius: BorderRadius.circular(20),
        ),
        hoverColor: AppColors.scaffoldBackgroundColor,
        textStyle: GoogleFonts.poppins(
          fontSize: 14,
          fontWeight: FontWeight.normal,
          color: Colors.white.withOpacity(0.7),
        ),
        selectedTextStyle: GoogleFonts.poppins(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Colors.white60,
        ),
        itemTextPadding: const EdgeInsets.only(left: 30),
        selectedItemTextPadding: const EdgeInsets.only(left: 30),
        itemDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: AppColors.canvasColor),
        ),
        selectedItemDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: AppColors.actionColor.withOpacity(0.37),
          ),
          gradient: const LinearGradient(
            colors: [AppColors.accentCanvasColor, AppColors.canvasColor],
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.28),
              blurRadius: 30,
            )
          ],
        ),
        iconTheme: IconThemeData(
          color: Colors.white.withOpacity(0.7),
          size: 20,
        ),
        selectedIconTheme: const IconThemeData(
          color: Colors.white,
          size: 20,
        ),
      ),
      extendedTheme: const SidebarXTheme(
        width: 200,
        decoration: BoxDecoration(
          color: AppColors.canvasColor,
        ),
      ),
      footerDivider: AppColors.divider,
      headerBuilder: (context, extended) {
        return SizedBox(
          height: 120,
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Image.asset('assets/images/logo.png'),
          ),
        );
      },
      items: [
        SidebarXItem(
          icon: Icons.home,
          label: 'Home',
          onTap: () {
            debugPrint('Home');
          },
        ),
        const SidebarXItem(
          icon: Icons.person_2_rounded,
          label: 'PR Member',
        ),
        const SidebarXItem(
          icon: Icons.post_add_rounded,
          label: 'Post',
        ),
        const SidebarXItem(
          icon: Icons.analytics_outlined,
          label: 'Analytics',
        ),
        const SidebarXItem(
          icon: Icons.person_pin,
          label: 'Profile',
        ),
        const SidebarXItem(
          icon: Icons.settings,
          label: 'Settings',
        ),
        const SidebarXItem(
          icon: Icons.logout_rounded,
          label: 'logout',
        ),
      ],
    );
  }
}
