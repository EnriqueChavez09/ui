import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui/global/global.dart';

class ItemHistoryWidget extends StatelessWidget {
  const ItemHistoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 10.0,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(
              0.10,
            ),
            blurRadius: 10.0,
            offset: const Offset(4, 4),
          ),
        ],
      ),
      child: ListTile(
        leading: SvgPicture.asset(
          "assets/images/car.svg",
          height: 50.0,
        ),
        title: Text(
          "Blok A Sarimi",
          style: GoogleFonts.poppins(
            color: CustomColors.blue,
            fontWeight: FontWeight.w500,
            fontSize: 14.0,
          ),
        ),
        subtitle: Text(
          "Desa Majumundur sasdaad",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: GoogleFonts.poppins(
            color: CustomColors.grey,
            fontWeight: FontWeight.w500,
            fontSize: 11.0,
          ),
        ),
        trailing: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "05, Sep 2022",
              style: GoogleFonts.poppins(
                color: CustomColors.grey,
                fontWeight: FontWeight.w500,
                fontSize: 11.0,
              ),
            ),
            const SizedBox(
              height: 6.0,
            ),
            Text(
              "\$ 30.00",
              style: GoogleFonts.poppins(
                color: CustomColors.ligthBlue,
                fontWeight: FontWeight.w700,
                fontSize: 11.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
