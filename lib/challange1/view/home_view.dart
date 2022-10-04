
import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/challange1/constant/string_contants.dart';
import 'package:flutter_ui_challenge/challange1/widget/all_text.dart';
import 'package:flutter_ui_challenge/challange1/widget/gradient_container.dart';
import 'package:flutter_ui_challenge/challange1/widget/mini_button_widget.dart';

import '../constant/color_constans.dart';
import '../widget/button_inside_button_widget.dart';
import '../widget/recent_transaction_item.dart';
import '../widget/send_again_people_card_widget.dart';
import '../widget/spacer_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final List<String> _notificationList = <String>[
    'Home',
    'Search',
    'Favorite',
    'Profile',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primaryColor,
      body: _body(),
    );
  }

  Column _body() {
    return Column(
      children: [
        GradientContainer(
          margin: const EdgeInsets.fromLTRB(5, 35, 5, 0),
          
          child: SafeArea(
            child: Column(
              children: [
                upperButtonsAndText,
                const CustomSpacer(height: 40),
                balanceTextZone,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    ButtonInsideButton(
                      icon: Icons.send_rounded,
                      text: StringConstants.send,
                    ),
                    ButtonInsideButton(
                      icon: Icons.payments,
                      text: StringConstants.pay,
                    ),
                    ButtonInsideButton(
                      icon: Icons.topic_rounded,
                      text: StringConstants.topUp,
                    ),
                    ButtonInsideButton(
                      icon: Icons.more_horiz_rounded,
                      text: StringConstants.more,
                    ),
                  ],
                ),
                const CustomSpacer(height: 40),
              ],
            ),
          ),
        ),
        const CustomSpacer(height: 40),
        const AllText(
            text: StringConstants.sendAgain,
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w700),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 30),
          physics: const BouncingScrollPhysics(),
          child: Row(
            children: [
              searchIcon,
              const SizedBox(
                width: 10,
              ),
              const SendAgainPeopleCard(
                  name: StringConstants.cardName,
                  amount: StringConstants.cardAmount),
              const SizedBox(
                width: 10,
              ),
              const SendAgainPeopleCard(
                  name: StringConstants.cardName2,
                  amount: StringConstants.cardAmount2),
              const SizedBox(
                width: 10,
              ),
              const SendAgainPeopleCard(
                  name: StringConstants.cardName,
                  amount: StringConstants.cardAmount),
            ],
          ),
        ),
        const CustomSpacer(height: 40),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            AllText(
                text: StringConstants.recendTransactions,
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w700),
            AllText(
                text: StringConstants.seeAll,
                color: Colors.redAccent,
                fontSize: 18,
                fontWeight: FontWeight.w500),
          ],
        ),
        const RecentTransactionItem(
            circleColor: Colors.green,
            name: StringConstants.figma,
            amount: StringConstants.figmaAmount,
            date: StringConstants.figmaDate),
        const CustomSpacer(height: 20),
        const RecentTransactionItem(
            circleColor: Colors.red,
            name: StringConstants.netflix,
            amount: StringConstants.netflixAmount,
            date: StringConstants.netflixDate),
        const CustomSpacer(height: 20),
        const RecentTransactionItem(
            circleColor: Colors.purple,
            name: StringConstants.canva,
            amount: StringConstants.canvaAmount,
            date: StringConstants.canvaDate),
      ],
    );
  }

  Container get searchIcon => Container(
        width: 70,
        height: 70,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 0.5,
              blurRadius: 15,
              offset: const Offset(0, 7), // changes position of shadow
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(40),
        ),
        child: IconButton(
          icon: const Icon(Icons.search_rounded, color: Colors.black, size: 30),
          onPressed: () {},
        ),
      );

  Column get balanceTextZone => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            StringConstants.yourBalance,
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.w400, color: Colors.white),
          ),
          CustomSpacer(height: 20),
          Text(
            StringConstants.money,
            style: TextStyle(
                fontSize: 35, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          CustomSpacer(height: 40),
        ],
      );

  Row get upperButtonsAndText => Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const MiniButton(icon: Icons.menu_outlined),
          RichText(
            text: const TextSpan(
              style: TextStyle(color: Colors.white, fontSize: 30),
              children: <TextSpan>[
                TextSpan(
                    text: StringConstants.welcomeBack,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.white54,
                    )),
                TextSpan(
                    text: StringConstants.name,
                    style: TextStyle(
                        fontWeight: FontWeight.w400, color: Colors.white)),
              ],
            ),
          ),
          MiniButton(
            icon: Icons.notifications,
            hasNotification: _notificationList.isNotEmpty,
          ),
        ],
      );
}
