import 'package:flutter/material.dart';
import 'package:re_sell_app/features/auth/sign_in_page.dart';
import 'package:re_sell_app/features/presentation/pages/tab_pages/home_page.dart';
import 'package:re_sell_app/features/presentation/widgets/global/custom_appbar.dart';
import 'package:re_sell_app/features/presentation/widgets/global/custom_button.dart';
import 'package:re_sell_app/features/presentation/widgets/global/custom_text.dart';
import 'package:re_sell_app/features/presentation/widgets/global/custom_textfield.dart';
import 'package:re_sell_app/features/utils/sizes/sizes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
      appBar: const CustomeAppbarWidget(
        leadingIcon: Icons.arrow_back_ios,
        treaibool: false,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              AppSizes.sizeFifty,
              Text(
                'Hello!',
                style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'Welcome Back You have been missed!',
                style: TextStyle(
                    color: Theme.of(context).colorScheme.primaryFixed,
                    fontSize: 14,
                    fontWeight: FontWeight.normal),
              ),
              AppSizes.sizeFifty,
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CommonText(text: 'Email Address'),
                      AppSizes.sizeFive,
                      const CustomeTextFiled(
                          controller: null,
                          hintText: 'Email',
                          icon: Icons.mail),
                      AppSizes.sizeTwenty,
                      const CommonText(text: 'Password'),
                      AppSizes.sizeFive,
                      const CustomeTextFiled(
                          controller: null,
                          hintText: 'password',
                          icon: Icons.password),
                      AppSizes.sizeTen,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Forgot Password?',
                            style: TextStyle(
                                color:
                                    Theme.of(context).colorScheme.primaryFixed,
                                fontSize: 15),
                          )
                        ],
                      ),
                      AppSizes.sizeThirty,
                      const CustomeButton(
                        text: 'Login',
                        page: HomePage(),
                      ),
                      AppSizes.sizeTen,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Don't have an Account?",
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primaryFixed,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignInPage(),
                                ),
                              );
                            },
                            child: Text(
                              "SignUp",
                              style: TextStyle(
                                  color: Theme.of(context).colorScheme.primary),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
