import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  List images = [
    "assets/image/image_running_shoes.png",
    "assets/image/image_running_shoes.png",
    "assets/image/image_running_shoes.png",
  ];

  List familiarShoes = [
    "assets/image/image_running_shoes.png",
    "assets/image/image_running_shoes.png",
    "assets/image/image_running_shoes.png",
    "assets/image/image_running_shoes.png",
    "assets/image/image_running_shoes.png",
    "assets/image/image_running_shoes.png",
  ];

  int currentIndex = 0;
  bool isWishlist = false;

  Future<void> showSuccessDialog() async {
    return showDialog(
      context: context,
      builder: (BuildContext context) => SizedBox(
        width: MediaQuery.of(context).size.width - (2 * defaultMargin),
        child: AlertDialog(
          backgroundColor: backgroundColor3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          content: SingleChildScrollView(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.close,
                      color: primaryTextColor,
                    ),
                  ),
                ),
                Image.asset(
                  "assets/image/success_icon.png",
                  width: 100,
                  height: 100,
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  "Hurray :)",
                  style: primaryTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: semiBold,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  "Item addedd successfully",
                  style: secondaryTextStyle,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      backgroundColor: primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      )),
                  child: Text(
                    "View my cart",
                    style: primaryTextStyle,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget familiarShoesCard(String imageUrl) {
    return Container(
      width: 54,
      height: 54,
      margin: const EdgeInsets.only(
        right: 16,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imageUrl),
        ),
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }

  Widget indicatorCarousel(int index) {
    return Container(
      width: currentIndex == index ? 16 : 4,
      height: 4,
      margin: const EdgeInsets.symmetric(horizontal: 2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: currentIndex == index ? primaryColor : secondaryColor,
      ),
    );
  }

  Widget header(BuildContext context) {
    int index = -1;

    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(
            top: 20,
            left: defaultMargin,
            right: defaultMargin,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.chevron_left,
                ),
              ),
              Icon(
                Icons.shopping_bag,
                color: backgroundColor1,
              )
            ],
          ),
        ),
        CarouselSlider(
          items: images
              .map(
                (image) => Image.asset(
                  image,
                  width: MediaQuery.of(context).size.width,
                  height: 310,
                  fit: BoxFit.cover,
                ),
              )
              .toList(),
          options: CarouselOptions(
              initialPage: 0,
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                });
              }),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: images.map((e) {
            index++;
            return indicatorCarousel(index);
          }).toList(),
        )
      ],
    );
  }

  Widget content() {
    return Container(
      margin: const EdgeInsets.only(
        top: 17,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(
            24,
          ),
        ),
        color: backgroundColor1,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header Content
          Container(
            margin: EdgeInsets.only(
                top: defaultMargin, left: defaultMargin, right: defaultMargin),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Terrex Urban Low",
                        style: primaryTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: semiBold,
                        ),
                      ),
                      Text(
                        "Hiking",
                        style: secondaryTextStyle,
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isWishlist = !isWishlist;
                    });
                    if (isWishlist) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: secondaryColor,
                          content: const Text(
                            "Has been added to the Wishlist",
                            textAlign: TextAlign.center,
                          ),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: alertColor,
                          content: const Text(
                            "Has been removed from the Wishlist",
                            textAlign: TextAlign.center,
                          ),
                        ),
                      );
                    }
                  },
                  child: Image.asset(
                    isWishlist
                        ? "assets/image/button_wish_list_blue.png"
                        : "assets/image/button_wishlist.png",
                    width: 46,
                  ),
                ),
              ],
            ),
          ),

          // Price
          Container(
            margin: EdgeInsets.only(
              top: 20.0,
              right: defaultMargin,
              left: defaultMargin,
            ),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: backgroundColor2,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "Price starts from",
                    style: primaryTextStyle,
                  ),
                ),
                Text(
                  "\$143,98",
                  style: TextStyle(
                    color: primaryColor,
                  ),
                )
              ],
            ),
          ),

          // Description
          Container(
            margin: EdgeInsets.only(
              left: defaultMargin,
              right: defaultMargin,
              top: defaultMargin,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Description",
                  style: primaryTextStyle,
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  "Unpaved trails and mixed surfaces are easy when you have the traction and support you need. Casual enough for the daily commute.",
                  textAlign: TextAlign.justify,
                  style: secondaryTextStyle,
                )
              ],
            ),
          ),

          // Familiar Shoes - Horizontal Scroll view
          Container(
            margin: EdgeInsets.only(
              left: defaultMargin,
              top: defaultMargin,
            ),
            child: Text(
              "Familiar Shoes",
              style: primaryTextStyle,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Row(
                children: familiarShoes
                    .map((image) => familiarShoesCard(image))
                    .toList(),
              ),
            ),
          ),

          // Buttons
          Container(
              margin: EdgeInsets.only(
                top: defaultMargin,
                left: defaultMargin,
                bottom: defaultMargin,
              ),
              child: Row(
                children: [
                  // Button Chat
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/chat');
                    },
                    child: Container(
                      width: 54,
                      height: 54,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: primaryColor,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Image.asset(
                          "assets/image/icon_chat_detail.png",
                        ),
                      ),
                    ),
                  ),

                  // Button Add to Cart
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        showSuccessDialog();
                      },
                      child: Container(
                        height: 54,
                        margin: EdgeInsets.only(
                          left: 16,
                          right: defaultMargin,
                        ),
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Text(
                            "Add to Cart",
                            style: primaryTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: semiBold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor6,
        body: ListView(
          children: [
            header(context),
            content(),
          ],
        ));
  }
}
