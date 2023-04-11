import 'package:flutter/material.dart';
import 'package:shamo/pages/widgets/checkout_card.dart';
import 'package:shamo/theme.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  PreferredSizeWidget header() {
    return AppBar(
      backgroundColor: backgroundColor1,
      elevation: 0,
      centerTitle: true,
      title: Text(
        "Checkout Details",
        style: primaryTextStyle.copyWith(
          fontSize: 18,
          fontWeight: semiBold,
        ),
      ),
    );
  }

  Widget content(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(defaultMargin),
      children: [
        // ==== List Items ====
        Text(
          "List Items",
          style: primaryTextStyle.copyWith(
            fontSize: 16,
            fontWeight: medium,
          ),
        ),
        const CheckoutCard(),
        const CheckoutCard(),

        // ==== Address Details ====
        Container(
          margin: EdgeInsets.only(
            top: defaultMargin,
          ),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: backgroundColor4,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Address Details",
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Image.asset(
                        "assets/image/icon_store_location.png",
                        width: 40,
                        height: 40,
                      ),
                      Image.asset(
                        "assets/image/icon_line.png",
                        width: 30,
                        height: 30,
                      ),
                      Image.asset(
                        "assets/image/icon_your_address.png",
                        width: 40,
                        height: 40,
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Store Location",
                        style: secondaryTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: light,
                        ),
                      ),
                      Text(
                        "Adidas Core",
                        style: primaryTextStyle.copyWith(
                          fontWeight: medium,
                        ),
                      ),
                      SizedBox(
                        height: defaultMargin,
                      ),
                      Text(
                        "Your Address",
                        style: secondaryTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: light,
                        ),
                      ),
                      Text(
                        "Marsemoon",
                        style: primaryTextStyle.copyWith(
                          fontWeight: medium,
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),

        // ==== Payment Summary ====
        Container(
          margin: EdgeInsets.only(
            top: defaultMargin,
          ),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: backgroundColor4,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Payment Summary",
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Text(
                    "Product Quantity",
                    style: secondaryTextStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "2 items",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      textAlign: TextAlign.end,
                      style: primaryTextStyle.copyWith(
                        fontWeight: medium,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Text(
                    "Product Price",
                    style: secondaryTextStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "\$575.96",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      textAlign: TextAlign.end,
                      style: primaryTextStyle.copyWith(
                        fontWeight: medium,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Text(
                    "Shipping",
                    style: secondaryTextStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "Free",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      textAlign: TextAlign.end,
                      style: primaryTextStyle.copyWith(
                        fontWeight: medium,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Divider(
                thickness: 0.5,
                color: primaryTextColor,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    "Total",
                    style: priceTextStyle.copyWith(
                      fontWeight: medium,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "\$575.92",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      textAlign: TextAlign.end,
                      style: priceTextStyle.copyWith(
                        fontWeight: medium,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),

        // ==== Checkout Button ====
        SizedBox(
          height: defaultMargin,
        ),
        Divider(
          thickness: 0.5,
          color: primaryTextColor,
        ),
        SizedBox(
          height: defaultMargin,
        ),
        Container(
          width: 315,
          height: 50,
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(
              12,
            ),
          ),
          child: TextButton(
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/checkout-success', (route) => false);
            },
            child: Text(
              "Checkout Now",
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header(),
      backgroundColor: backgroundColor3,
      body: content(context),
    );
  }
}
