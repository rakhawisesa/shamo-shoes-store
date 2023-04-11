import 'package:flutter/material.dart';
import 'package:shamo/pages/widgets/cart_card.dart';
import 'package:shamo/theme.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  PreferredSizeWidget header() {
    return AppBar(
      backgroundColor: backgroundColor1,
      centerTitle: true,
      title: Text(
        "Your Cart",
        style: primaryTextStyle,
      ),
      elevation: 0,
    );
  }

  Widget emptyCart(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/image/icon_empty_cart.png",
            width: 79,
            height: 69,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Opss! Your Cart is Empty",
            style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            "Let's find your favorite shoes",
            style: secondaryTextStyle,
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 154,
            height: 44,
            child: TextButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, "/home", (route) => false);
              },
              style: TextButton.styleFrom(
                  backgroundColor: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  )),
              child: Text(
                "Explore Store",
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget content() {
    return ListView(
      padding: EdgeInsets.symmetric(
        horizontal: defaultMargin,
      ),
      children: const [
        CartCard(),
      ],
    );
  }

  Widget customBottomNav(BuildContext context) {
    return SizedBox(
      height: 175,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: defaultMargin,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Subtotal",
                  style: primaryTextStyle,
                ),
                Expanded(
                  child: Text(
                    "\$287,96",
                    style: priceTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                    textAlign: TextAlign.end,
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(defaultMargin),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: backgroundColor6,
                  width: 0.4,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            height: 50,
            margin: EdgeInsets.symmetric(
              horizontal: defaultMargin,
            ),
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, "/checkout");
              },
              style: TextButton.styleFrom(
                backgroundColor: primaryColor,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Continue to Checkout",
                    style: primaryTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  const Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: header(),
      body: content(),
      bottomNavigationBar: customBottomNav(context),
    );
  }
}
