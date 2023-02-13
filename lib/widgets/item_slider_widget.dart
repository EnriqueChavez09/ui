import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui/global/global.dart';

class ItemSliderWidget extends StatelessWidget {
  const ItemSliderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(right: 16.0, top: 16.0),
      constraints: BoxConstraints(
        maxWidth: width * 0.4,
      ),
      child: Column(
        children: [
          Container(
            width: width * 0.4,
            height: 150.0,
            decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage("assets/images/map.jpg"),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10.0)),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Block C Benjamin",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.start,
                  style: GoogleFonts.poppins(
                    color: CustomColors.blue,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "Jl. Kita Berdua scdassdsdnfjnsdbs",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.poppins(
                    color: CustomColors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 12.0,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "Open",
                      style: GoogleFonts.poppins(
                        color: CustomColors.ligthBlue,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "· 07:00 - 22:00",
                        style: GoogleFonts.poppins(
                          color: CustomColors.grey,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
