import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  PreferredSizeWidget header(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(
          Icons.close,
        ),
      ),
      backgroundColor: backgroundColor1,
      elevation: 0,
      centerTitle: true,
      title: const Text(
        "Edit Profile",
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.check,
            color: primaryColor,
          ),
        )
      ],
    );
  }

  Widget textInput(String title, String hint) {
    return Container(
      margin: EdgeInsets.only(top: defaultMargin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: secondaryTextStyle.copyWith(
              fontSize: 13,
            ),
          ),
          TextFormField(
            style:
                primaryTextStyle, // Untuk styling text utama, bukan hint text
            decoration: InputDecoration(
                hintText: hint,
                hintStyle: primaryTextStyle,
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                  color: secondaryColor,
                ))),
          )
        ],
      ),
    );
  }

  Widget content() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: defaultMargin,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 100,
            height: 100,
            margin: EdgeInsets.only(top: defaultMargin),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                  "assets/image/icon_home_profile.png",
                ),
              ),
            ),
          ),
          textInput("Name", "Write Your Name"),
          const SizedBox(
            height: 5,
          ),
          textInput("Username", "Write Your Username"),
          const SizedBox(
            height: 5,
          ),
          textInput("Email", "Write Your Email")
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backgroundColor3,
      appBar: header(context),
      body: SingleChildScrollView(
        child: content(),
      ),
    );
  }
}
