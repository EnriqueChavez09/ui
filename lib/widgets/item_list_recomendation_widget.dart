import 'package:flutter/material.dart';
import 'package:ui/global/global.dart';
import 'package:ui/models/models.dart';

class ItemListRecomendationWidget extends StatelessWidget {
  SiteModel site;
  ItemListRecomendationWidget({
    required this.site,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 10.0,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 10.0,
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(
            8.0,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(
                0.15,
              ),
              blurRadius: 5,
              offset: const Offset(4, 4),
            ),
          ]),
      child: ListTile(
        minVerticalPadding: 0,
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(
            10.0,
          ),
          child: Image.network(
            site.url,
            width: width * 0.16,
            height: width * 0.16,
            fit: BoxFit.cover,
          ),
        ),
        title: Text(
          site.name,
          style: TextStyle(
            color: CustomColors.blue,
            fontSize: 14.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        subtitle: Column(
          children: [
            Row(
              children: [
                ...List.generate(
                  5,
                  (index) => const Icon(
                    Icons.star,
                    size: 12.0,
                    color: Colors.amber,
                  ),
                ),
                const SizedBox(
                  width: 5.0,
                ),
                Text(
                  "${site.rating}",
                  style: TextStyle(
                    color: CustomColors.grey,
                    fontSize: 12.0,
                  ),
                ),
              ],
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
    );
  }
}
