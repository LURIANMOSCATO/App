import 'package:app_desconto/widgets/categories.dart';
import 'package:app_desconto/widgets/home_app_bar.dart';
import 'package:app_desconto/widgets/home_search_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String currentCat = "All";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeAppBar(),
              const SizedBox(height: 20),
              Categories(currentCat: currentCat),
              const SizedBox(height: 10),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 190,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: const DecorationImage(
                    image: NetworkImage(
                        'https://tcheofertas.s3.sa-east-1.amazonaws.com/upload/theme/webp/20240718151600.webp'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 20),
              HomeSearchBar(),
            ],
          ),
        ),
      )),
    );
  }
}
