import 'package:flutter/material.dart';

class CustomeAppbarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  final IconData? leadingIcon;
  final bool leadbool;
  final String? title;
  final bool treaibool;
  final IconData? trailingIcon;
  const CustomeAppbarWidget({
    this.leadingIcon,
    this.leadbool = false,
    this.title,
    this.trailingIcon,
    this.treaibool = false,
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 12, right: 12, top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            leadbool?
              CircleAvatar(
                radius: 25,
                backgroundColor:Theme.of(context).colorScheme.secondary,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Icon(
                    leadingIcon,
                    color: Theme.of(context).colorScheme.primary,
                    size: 20,
                  ),
                ),
              ):const SizedBox(width: 50,),
              
            Text(
              title ?? '',
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
            ),
            if (treaibool)
              CircleAvatar(
                radius: 25,
                backgroundColor:Theme.of(context).colorScheme.secondary,
                child: Icon(
                  trailingIcon,
                  color: Theme.of(context).colorScheme.primary,
                  size: 20,
                ),
              ),
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size(double.maxFinite, 80);
}
