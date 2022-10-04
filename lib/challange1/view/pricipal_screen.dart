import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/challange1/constant/color_constans.dart';
import 'package:flutter_ui_challenge/challange1/view/home_view.dart';
import 'package:flutter_ui_challenge/challange1/view/page_2.dart';
import 'package:flutter_ui_challenge/challange1/view/page_4.dart';
import 'package:flutter_ui_challenge/challange1/view/payment_view.dart';

class PricipalScreen extends StatefulWidget {
  const PricipalScreen({super.key});

  @override
  State<PricipalScreen> createState() => _PricipalScreenState();
}

class _PricipalScreenState extends State<PricipalScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primaryColor,
      body: views,
      bottomNavigationBar: _bottomNavBar(),
    );
  }

  Widget get views {
    switch (_currentIndex) {
      case 0:
        return const HomeView();
      case 1:
        return const Page2View();
      case 2:
        return const PaymentView();
      case 3:
        return const Page4View();
      default:
        return const HomeView();
    }
  }

  Container _bottomNavBar() {
    return Container(
      alignment: Alignment.center,
      height: 110,
      child: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        backgroundColor: ColorManager.white,
        selectedItemColor: ColorManager.black,
        unselectedItemColor: Colors.black54,
        onTap: (value) {
          setState(() => _currentIndex = value);
        },
        items: [
          _navBarItem1,
          _navBarItem2,
          _navBarItem3,
          _navBarItem4,
          _navBarItem5,
        ],
      ),
    );
  }

  BottomNavigationBarItem get _navBarItem1 => BottomNavigationBarItem(
        icon: const Icon(
          Icons.home_outlined,
          color: ColorManager.navBarDeactive,
          size: 35,
        ),
        activeIcon: Column(children: const [
          Icon(
            Icons.home_sharp,
            color: ColorManager.navBarActive,
            size: 35,
          ),
          CircleAvatar(
            radius: 3,
            backgroundColor: ColorManager.navBarActive,
          )
        ]),
        tooltip: "Home",
        label: "",
      );

  BottomNavigationBarItem get _navBarItem2 => BottomNavigationBarItem(
        icon: const Icon(
          Icons.stairs_outlined,
          color: ColorManager.navBarDeactive,
          size: 35,
        ),
        activeIcon: Column(children: const [
          Icon(
            Icons.stairs_rounded,
            color: ColorManager.navBarActive,
            size: 35,
          ),
          CircleAvatar(
            radius: 3,
            backgroundColor: ColorManager.navBarActive,
          )
        ]),
        tooltip: "Graph",
        label: "",
      );

  BottomNavigationBarItem get _navBarItem3 => BottomNavigationBarItem(
        icon: Container(
          height: 75,
          width: 75,
          decoration: const BoxDecoration(
            color: ColorManager.primaryColor,
            shape: BoxShape.circle,
          ),
          child: Container(
            height: 70,
            width: 70,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xff2a9d8f), Color(0xffe37052)],
              ),
            ),
            child: _currentIndex == 2
                ? const Icon(
                    Icons.document_scanner_rounded,
                    color: Colors.white,
                    size: 35,
                  )
                : const Icon(
                    Icons.document_scanner_outlined,
                    color: Colors.white,
                    size: 35,
                  ),
          ),
        ),
        tooltip: "QR",
        label: "",
      );

  BottomNavigationBarItem get _navBarItem4 => BottomNavigationBarItem(
        icon: const Icon(
          Icons.payments_outlined,
          color: ColorManager.navBarDeactive,
          size: 35,
        ),
        activeIcon: Column(children: const [
          Icon(
            Icons.payments_rounded,
            color: ColorManager.navBarActive,
            size: 35,
          ),
          CircleAvatar(
            radius: 3,
            backgroundColor: ColorManager.navBarActive,
          )
        ]),
        tooltip: "Payment",
        label: "",
      );

  BottomNavigationBarItem get _navBarItem5 => BottomNavigationBarItem(
        icon: const Icon(
          Icons.person_outline,
          color: ColorManager.navBarDeactive,
          size: 35,
        ),
        activeIcon: Column(children: const [
          Icon(
            Icons.person_rounded,
            color: ColorManager.navBarActive,
            size: 35,
          ),
          CircleAvatar(
            radius: 3,
            backgroundColor: ColorManager.navBarActive,
          )
        ]),
        tooltip: "Profile",
        label: "",
      );
}
