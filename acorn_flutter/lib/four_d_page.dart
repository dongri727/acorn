import 'package:flutter/material.dart';

import 'index.dart';
import 'utils/custom_page_route.dart';


class FourDViewPage extends StatelessWidget {
  const FourDViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand( ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/both.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: OutlinedButton(
          onPressed: () {
            Navigator.push<String>(
              context,
              CustomPageRoute(
                const IndexPage(),
              ),
            );
          },
          child: const Text(
            "return",

          ),
        ),
      ),
    );
  }}
