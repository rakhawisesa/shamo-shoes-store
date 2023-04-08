import 'package:flutter/material.dart';
import 'package:shamo/pages/widgets/chat_bubble.dart';
import 'package:shamo/theme.dart';

class DetailChatPage extends StatelessWidget {
  const DetailChatPage({Key? key}) : super(key: key);

  PreferredSize header() {
    return PreferredSize(
        preferredSize: const Size.fromHeight(65),
        child: AppBar(
          backgroundColor: backgroundColor1,
          centerTitle: false,
          title: Row(
            children: [
              Image.asset(
                'assets/image/icon_message_online.png',
                width: 40,
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Shoe Store",
                      style: primaryTextStyle.copyWith(fontWeight: medium),
                    ),
                    Text(
                      "online",
                      style: secondaryTextStyle.copyWith(fontSize: 12),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }

  Widget productPreview() {
    return Container(
      width: 225,
      height: 74,
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: backgroundColor5,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: primaryColor)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              "assets/image/image_running_shoes.png",
              width: 54,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "COURT VISION",
                  style: primaryTextStyle,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  "\$57,15",
                  style: priceTextStyle.copyWith(fontWeight: medium),
                )
              ],
            ),
          ),
          Image.asset(
            "assets/image/icon_close_preview_chat.png",
            width: 22,
          )
        ],
      ),
    );
  }

  Widget chatInput() {
    return Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            productPreview(),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 45,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 12),
                    decoration: BoxDecoration(
                        color: backgroundColor4,
                        borderRadius: BorderRadius.circular(12)),
                    child: Center(
                      child: TextFormField(
                        decoration: InputDecoration.collapsed(
                            hintText: "Type message",
                            hintStyle: secondaryTextStyle),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Image.asset(
                  "assets/image/icon_send_chat.png",
                  width: 45,
                  height: 45,
                )
              ],
            ),
          ],
        ));
  }

  Widget content() {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: defaultMargin),
      children: const [
        ChatBubble(
          isSender: true,
          text: "Hi, is this item still available?",
          hasProduct: true,
        ),
        ChatBubble(
          isSender: false,
          text: "Good night, This item is only available in size 42 and 43",
          hasProduct: false,
        ),
        ChatBubble(
          isSender: true,
          text: "Owww, it suits me very well",
          hasProduct: false,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: header(),
      bottomNavigationBar: chatInput(),
      body: content(),
    );
  }
}
