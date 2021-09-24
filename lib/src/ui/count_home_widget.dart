import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_sns_login/src/provider/count_provider.dart';

class CountHomeWidget extends StatelessWidget {
  const CountHomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("빌드");
    return Center(
      child: Consumer<CountProvider>(
        builder: (context, provider, child) {
          return Text(
            Provider.of<CountProvider>(context).count.toString(),
            style: TextStyle(fontSize: 80),
          );
        },
      ),
    );
  }
}
