import 'package:clock_analog/view/stopwatch_view/stopwatch_view.dart';
import 'package:clock_analog/view_model/bloc/stopwatch_bloc/stopwatch_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import '../../res/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late int _currentIndex;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _currentIndex = 0;
    _pageController = PageController(initialPage: _currentIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
        child: GNav(
          selectedIndex: _currentIndex,
          backgroundColor: backgroundColor,
          rippleColor: Colors.transparent,
          hoverColor: Colors.transparent,
          haptic: true,
          tabBorderRadius: 30,
          tabActiveBorder: Border.all(
            color: Colors.transparent,
            width: 1,
          ),
          tabBorder: Border.all(color: Colors.transparent, width: 1),
          curve: Curves.easeOutExpo,
          duration: const Duration(milliseconds: 300),
          gap: 8,
          color: Colors.transparent,
          activeColor: Colors.transparent,
          iconSize: 24,
          tabBackgroundColor: Colors.transparent,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          tabs: const [
            GButton(
              icon: Icons.timer,
              text: 'Timer',
            ),
          ],
        ),
      ),
      body: AnimatedBuilder(
        animation: _pageController,
        builder: (context, child) {
          return PageView(
            controller: _pageController,
            children: [
              BlocProvider(
                create: (context) => StopwatchCubit(),
                child: const StopWatchScreen(),
              ),
            ],
          );
        },
      ),
    );
  }
}
