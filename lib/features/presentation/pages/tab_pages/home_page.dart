import 'package:flutter/material.dart';
import 'package:re_sell_app/features/presentation/widgets/global/custom_appbar.dart';
import 'package:re_sell_app/features/presentation/widgets/global/custom_text.dart';
import 'package:re_sell_app/features/presentation/widgets/global/custom_textfield.dart';
import 'package:re_sell_app/features/utils/sizes/sizes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
        appBar: const CustomeAppbarWidget(
          leadbool: false,
          title: 'S W I F T S E L L',
          treaibool: true,
          trailingIcon: Icons.card_travel,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppSizes.sizeTwenty,
              const CustomeTextFiled(
                  controller: null,
                  hintText: "Search here",
                  icon: Icons.search_outlined),
              AppSizes.sizeTwenty,
              const CommonText(text: 'Best Sellers'),
              AppSizes.sizeThirty,
              Container(
                height: 200,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => buildCards(),
                    separatorBuilder: (context, index) =>
                        AppSizes.sizeWidgthTwentyfive,
                    itemCount: 6),
              )
            ],
          ),
        ));
  }

  Widget buildCards() {
    return Container(
      color: Colors.amber,
      width: 200,
      height: 200,
      child: Column(
        children: [
          Image.asset('assets/images/blackUltraboost_23_check.jpg'),
          Text('hello'),
        ],
      ),
    );
  }
}
