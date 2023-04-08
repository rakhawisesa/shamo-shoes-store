import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  Widget header(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: backgroundColor1,
      elevation: 0,
      flexibleSpace: SafeArea(
        child: Container(
          padding: EdgeInsets.all(defaultMargin),
          child: Row(
            children: [
              ClipOval(
                child: Image.asset(
                  "assets/image/icon_home_profile.png",
                  width: 64,
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hallo, Alex",
                      style: primaryTextStyle.copyWith(
                        fontSize: 24,
                        fontWeight: semiBold,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Text(
                      "@alexkeinn",
                      style: secondaryTextStyle.copyWith(fontSize: 16),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacementNamed(context, "/sign-in");
                },
                child: Image.asset(
                  "assets/image/icon_exit_button.png",
                  width: 20,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget headerMenu(String title) {
    return Text(
      title,
      style: primaryTextStyle.copyWith(
        fontSize: 16,
        fontWeight: semiBold,
      ),
    );
  }

  Widget subMenu(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Text(
            title,
            style: secondaryTextStyle.copyWith(
              fontSize: 15,
            ),
          ),
        ),
        Icon(
          Icons.chevron_right,
          color: secondaryColor,
        )
      ],
    );
  }

  Widget content(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: defaultMargin, vertical: defaultMargin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          headerMenu("Account"),
          const SizedBox(
            height: 16,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "/edit-profile");
            },
            child: subMenu(
              "Edit Profile",
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          subMenu("Your Orders"),
          const SizedBox(
            height: 20,
          ),
          subMenu("Help"),
          const SizedBox(
            height: 30,
          ),
          headerMenu("General"),
          const SizedBox(
            height: 16,
          ),
          subMenu("Privacy & Policy"),
          const SizedBox(
            height: 16,
          ),
          subMenu("Terms of Service"),
          const SizedBox(
            height: 16,
          ),
          subMenu("Rate App"),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        header(context),
        content(context),
      ],
    );
  }
}
