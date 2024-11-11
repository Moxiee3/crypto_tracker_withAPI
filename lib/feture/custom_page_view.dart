import 'package:crypto_app/feture/custom_item_widget.dart';
import 'package:flutter/material.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({super.key, required this.height, required this.width});
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        CustomItemWidget(
            height: height,
            width: width,
            image: "assets/crypto.png",
            title: "Welcome to Cryptol",
            subtitle: "You can now manage all your ",
            text: "crypto assets in one place, crypol!"),
        CustomItemWidget(
            height: height,
            width: width,
            image: "assets/crypto2.png",
            title: "The All in one Wallet",
            subtitle: "Hodl Bitcoin, Etherium, XRP, Doge, ",
            text: "alt coins and many other coins "),
        CustomItemWidget(
            height: height,
            width: width,
            image: "assets/crypto3.jpg",
            title: "Safe and Secure Transctions",
            subtitle: "Send and recieve crypto daily, ",
            text: "easy, safe and secure."),
      ],
    );
  }
}
