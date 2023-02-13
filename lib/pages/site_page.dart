import 'package:flutter/material.dart';
import 'package:ui/data/data_dummy.dart';
import 'package:ui/global/global.dart';
import 'package:ui/widgets/widgets.dart';

class SitePage extends StatelessWidget {
  DataDummy data = DataDummy();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(236, 245, 255, 1),
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: CustomColors.ligthBlue100,
                                    size: 15.0,
                                  ),
                                  const SizedBox(
                                    width: 3.0,
                                  ),
                                  Text(
                                    "Location",
                                    style: TextStyle(
                                      color: CustomColors.grey,
                                      fontSize: 13.0,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 4.0,
                              ),
                              Text(
                                "Purbalingga, Jawa Tengah",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: CustomColors.blue,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 13.0),
                              ),
                            ],
                          ),
                        ),
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(
                                5.0,
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5.0)),
                              child: Icon(
                                Icons.notifications,
                                color: CustomColors.grey,
                              ),
                            ),
                            Positioned(
                              right: 5.0,
                              top: 6.0,
                              child: Container(
                                padding: const EdgeInsets.all(
                                  2.0,
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50.0)),
                                child: const Icon(
                                  Icons.circle,
                                  color: Colors.red,
                                  size: 8.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          10.0,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.15),
                            blurRadius: 10,
                            offset: const Offset(4, 4),
                          )
                        ],
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(
                              10.0,
                            ),
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20.0,
                            vertical: 10.0,
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Search",
                          hintStyle: TextStyle(
                            color: CustomColors.grey,
                            fontSize: 14.0,
                          ),
                          suffixIcon: const Padding(
                            padding: EdgeInsets.only(
                              right: 20.0,
                            ),
                            child: Icon(
                              Icons.search,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      "Category",
                      style: TextStyle(
                        color: CustomColors.blue,
                        fontWeight: FontWeight.w600,
                        fontSize: 16.0,
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: data.listCategories.map((item) {
                          return ItemCategoryWidget(
                            category: item,
                          );
                        }).toList(),
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      "Recomendation",
                      style: TextStyle(
                        color: CustomColors.blue,
                        fontWeight: FontWeight.w600,
                        fontSize: 16.0,
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: data.listSites.map((item) {
                          return ItemRecomendationSliderWidget(
                            site: item,
                          );
                        }).toList(),
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      "Recomendation",
                      style: TextStyle(
                        color: CustomColors.blue,
                        fontWeight: FontWeight.w600,
                        fontSize: 16.0,
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Column(
                      children: data.listSites.map((item) {
                        return ItemListRecomendationWidget(
                          site: item,
                        );
                      }).toList(),
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 2.0,
              ),
              decoration: BoxDecoration(
                color: CustomColors.ligthBlue100,
                borderRadius: BorderRadius.circular(
                  10.0,
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.shopping_cart,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.bookmark,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
