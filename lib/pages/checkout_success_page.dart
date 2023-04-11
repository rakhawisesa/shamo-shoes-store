import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class CheckoutSuccessPage extends StatelessWidget {
  const CheckoutSuccessPage({super.key});

  PreferredSizeWidget header() {
    return AppBar(
      backgroundColor: backgroundColor1,
      centerTitle: true,
      title: const Text("Checkout Success"),
      elevation: 0,
    );
  }

  Widget content(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/image/icon_empty_cart.png",
            width: 80,
            height: 70,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "You made a transaction",
            style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            "Stay at home while we\n prepare your dream shoes",
            textAlign: TextAlign.center,
            style: secondaryTextStyle,
          ),
          SizedBox(
            height: defaultMargin,
          ),
          Container(
            width: 200,
            height: 45,
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: TextButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/home', (route) => false);
              },
              child: Text(
                "Order Other Shoes",
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Container(
            width: 200,
            height: 45,
            decoration: BoxDecoration(
              color: const Color(0xff39374B),
              borderRadius: BorderRadius.circular(12),
            ),
            child: TextButton(
              onPressed: () {},
              child: Text(
                "View My Order",
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: header(),
      body: content(context),
    );
  }
}
