part of dashboard;

/// 底部导航栏
class _BottomNavbar extends StatelessWidget {

  final Function(int index) onSelected;
  final int currentIndex;

  const _BottomNavbar({Key? key,required this.currentIndex,required this.onSelected}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        // 不显示label
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: currentIndex,
        onTap: onSelected,
        items: const [
      BottomNavigationBarItem(
          icon: Icon(CustomIcons.home_outlined),
          activeIcon: Icon(CustomIcons.home_solid),
          label: 'home'),
      BottomNavigationBarItem(
          icon: Icon(CustomIcons.cloud_outlined),
          activeIcon: Icon(CustomIcons.cloud_solid),
          label: 'cloud'),
    ]);
  }
}
