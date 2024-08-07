import 'package:flutter/material.dart';
import 'package:roomadda/Config/string.dart';

class AuthBody extends StatelessWidget {
  const AuthBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 175,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: const BorderRadius.only(
          bottomRight: Radius.elliptical(40, 40),
          bottomLeft: Radius.elliptical(40, 40),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            AppString.appName,
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          Text(
            AppString.appNameSubTitle,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }
}