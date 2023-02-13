import 'package:flutter/material.dart';
import 'package:ui/global/global.dart';

class FoodPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: height,
          decoration: const BoxDecoration(
            color: Colors.amber,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                "https://www.bembos.com.pe/_ipx/q_85,w_290,f_webp/https://d31npzejelj8v1.cloudfront.net/media/catalog/product/h/a/hamburguesa-bembos-a-lo-pobre-base_1.jpg",
              ),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: const [
                  Text(
                    "BURGER",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "QUEEN",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  const Text(
                    "Good Food",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  const Text(
                    "Tasty Food *",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: CustomColors.blue200,
                      minimumSize: const Size(
                        double.infinity,
                        50.0,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          12.0,
                        ),
                      ),
                    ),
                    child: const Text(
                      "Sign in",
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
