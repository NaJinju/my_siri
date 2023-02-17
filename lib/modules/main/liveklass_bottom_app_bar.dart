import 'package:flutter/material.dart';

class LiveKlassBottomAppBar extends StatelessWidget {
  const LiveKlassBottomAppBar({
    super.key,
    this.fabLocation = FloatingActionButtonLocation.endDocked,
    required this.onTapNaviagtionTab,
  });

  final FloatingActionButtonLocation fabLocation;
  final Function onTapNaviagtionTab;

  static final List<FloatingActionButtonLocation> centerLocations =
      <FloatingActionButtonLocation>[
    FloatingActionButtonLocation.centerDocked,
    FloatingActionButtonLocation.centerFloat,
  ];

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 0,
      shape: const CircularNotchedRectangle(),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(
          bottom: 16,
        ),
        child: IconTheme(
          data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
            ),
            child: Row(
              children: <Widget>[
                IconButton(
                  tooltip: 'Open navigation menu',
                  icon: const Icon(
                    Icons.home_filled,
                    color: Color(0XFFB1B8C0),
                    size: 24,
                  ),
                  onPressed: () => onTapNaviagtionTab(0),
                ),
                const SizedBox(
                  width: 20,
                ),
                IconButton(
                  tooltip: 'Open navigation menu',
                  icon: const Icon(
                    Icons.chat_bubble,
                    color: Color(0XFFB1B8C0),
                    size: 24,
                  ),
                  onPressed: () => onTapNaviagtionTab(1),
                ),
                if (centerLocations.contains(fabLocation)) const Spacer(),
                IconButton(
                  tooltip: 'Search',
                  icon: const Icon(
                    Icons.notifications,
                    color: Color(0XFFB1B8C0),
                    size: 24,
                  ),
                  onPressed: () => onTapNaviagtionTab(3),
                ),
                const SizedBox(
                  width: 20,
                ),
                IconButton(
                  tooltip: 'Favorite',
                  icon: const Icon(
                    Icons.person,
                    color: Color(0XFFB1B8C0),
                    size: 24,
                  ),
                  onPressed: () => onTapNaviagtionTab(4),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
