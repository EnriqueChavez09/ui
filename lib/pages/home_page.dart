import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui/global/global.dart';
import 'package:ui/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    CustomColors.blue100,
                    CustomColors.blue,
                    CustomColors.blue,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              // color: CustomColors.blue,
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Parkirin",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 22.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "24°c",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 20.0,
                              ),
                            ),
                            const SizedBox(
                              width: 4.0,
                            ),
                            SvgPicture.asset(
                              "assets/images/weather.svg",
                              height: 40.0,
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 18.0,
                    ),
                    Container(
                      constraints: BoxConstraints(
                        maxWidth: width * 0.6,
                      ),
                      child: Text(
                        "Let's find a place for you",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 32.0,
                          height: 1.15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 18.0,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              prefixIcon: Icon(
                                Icons.search,
                                color: CustomColors.grey,
                                size: 26.0,
                              ),
                              hintText: "Find parking place",
                              hintStyle: GoogleFonts.poppins(
                                color: CustomColors.grey,
                                fontSize: 14.0,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                  12.0,
                                ),
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 15.0,
                        ),
                        Container(
                          padding: const EdgeInsets.all(
                            18.0,
                          ),
                          decoration: BoxDecoration(
                              color: CustomColors.yellow,
                              borderRadius: BorderRadius.circular(
                                12.0,
                              )),
                          child: const Icon(
                            Icons.filter_alt_rounded,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Parking Near You",
                        style: GoogleFonts.poppins(
                          fontSize: 18.0,
                          color: CustomColors.blue,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Row(
                        // crossAxisAlignment: CrossAxisAlignment.baseline,
                        // textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            "View More",
                            style: GoogleFonts.poppins(
                              fontSize: 12.0,
                              color: CustomColors.yellow,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: CustomColors.yellow,
                            size: 16.0,
                          ),
                        ],
                      )
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    child: Row(
                      children: const [
                        ItemSliderWidget(),
                        ItemSliderWidget(),
                        ItemSliderWidget(),
                        ItemSliderWidget(),
                      ],
                    ),
                  ), //
                  const SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "History Parking",
                    style: GoogleFonts.poppins(
                      fontSize: 18.0,
                      color: CustomColors.blue,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  ItemHistoryWidget(),
                  ItemHistoryWidget(),
                  ItemHistoryWidget(),
                  ItemHistoryWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
