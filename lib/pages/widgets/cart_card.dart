import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class CartCard extends StatelessWidget {
  const CartCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: defaultMargin),
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: backgroundColor4,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: const DecorationImage(
                    image: AssetImage("assets/image/image_running_shoes.png"),
                  ),
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Terrex Urban Low",
                      style: primaryTextStyle,
                    ),
                    Text(
                      "\$143,98",
                      style: priceTextStyle,
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Image.asset(
                    "assets/image/button_add.png",
                    width: 16,
                    height: 16,
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    "2",
                    style: primaryTextStyle.copyWith(
                      fontWeight: medium,
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Image.asset(
                    "assets/image/button_minus.png",
                    width: 16,
                    height: 16,
                  ),
                ],
              )
            ],
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.only(top: 15),
              child: Row(
                children: [
                  Image.asset(
                    "assets/image/icon_remove.png",
                    width: 12,
                    height: 14,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    "Remove",
                    style: TextStyle(
                      color: alertColor,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
