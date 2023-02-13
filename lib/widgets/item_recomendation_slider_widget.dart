import 'package:ui/global/global.dart';
import 'package:ui/models/models.dart';
import 'package:flutter/material.dart';

class ItemRecomendationSliderWidget extends StatelessWidget {
  SiteModel site;
  ItemRecomendationSliderWidget({
    required this.site,
  });
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, "detail", arguments: {
          "url": site.url,
          "name": site.name,
          "price": site.price,
          "rating": site.rating
        });
      },
      child: Container(
        padding: const EdgeInsets.all(
          15.0,
        ),
        margin: const EdgeInsets.only(
          right: 15.0,
        ),
        constraints: BoxConstraints(
          maxWidth: width * 0.6,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(
            10.0,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(
                0.15,
              ),
              blurRadius: 5,
              offset: const Offset(4, 4),
            ),
          ],
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(
                10.0,
              ),
              child: Image.network(
                site.url,
                width: width * 0.6,
                height: height * 0.2,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        site.name,
                        style: TextStyle(
                          color: CustomColors.blue,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      Row(
                        children: [
                          Text(
                            "\$ ${site.price}",
                            style: TextStyle(
                              color: CustomColors.ligthBlue100,
                              fontSize: 12.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "/Month",
                            style: TextStyle(
                              color: CustomColors.grey,
                              fontSize: 12.0,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            size: 12.0,
                            color: CustomColors.grey,
                          ),
                          Expanded(
                            child: Text(
                              site.location,
                              style: TextStyle(
                                color: CustomColors.grey,
                                fontSize: 12.0,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          size: 12.0,
                          color: Colors.amber,
                        ),
                        Text(
                          "${site.rating}",
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Icon(
                      Icons.bookmark,
                      size: 25.0,
                      color: CustomColors.grey,
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
