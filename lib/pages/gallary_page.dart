import 'package:flutter/material.dart';
import 'package:ui/data/data_dummy.dart';
import 'package:ui/global/global.dart';
import 'package:ui/widgets/widgets.dart';

class GalleryPage extends StatelessWidget {
  DataDummy data = DataDummy();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    final arguments = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            SizedBox(
              height: height,
              child: Image.asset(
                arguments["url"],
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 20.0,
              left: 10.0,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    padding: const EdgeInsets.all(0),
                    backgroundColor: const Color(
                      0xFFECECEC,
                    ),
                    minimumSize: const Size(40.0, 40.0)),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: CustomColors.blue,
                  size: 20.0,
                ),
              ),
            ),
            Positioned(
              bottom: 120.0,
              right: 10.0,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    padding: const EdgeInsets.all(0),
                    backgroundColor: const Color(
                      0xFFECECEC,
                    ),
                    minimumSize: const Size(40.0, 40.0)),
                onPressed: () {},
                child: Icon(
                  Icons.bathroom,
                  color: CustomColors.ligthBlue100,
                  size: 20.0,
                ),
              ),
            ),
            Positioned(
              bottom: 70.0,
              right: 10.0,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    padding: const EdgeInsets.all(0),
                    backgroundColor: const Color(
                      0xFFECECEC,
                    ),
                    minimumSize: const Size(40.0, 40.0)),
                onPressed: () {},
                child: Icon(
                  Icons.bed,
                  color: CustomColors.ligthBlue100,
                  size: 20.0,
                ),
              ),
            ),
            Positioned(
              bottom: 20.0,
              right: 10.0,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    padding: const EdgeInsets.all(0),
                    backgroundColor: const Color(
                      0xFFECECEC,
                    ),
                    minimumSize: const Size(40.0, 40.0)),
                onPressed: () {},
                child: Icon(
                  Icons.chair,
                  color: CustomColors.ligthBlue100,
                  size: 20.0,
                ),
              ),
            ),
            ...List.generate(
              data.placesRoom.length,
              (index) => ItemPlaceRoomWidget(
                place: data.placesRoom[index],
              ),
            ),
            Positioned(
              bottom: 20.0,
              left: 20.0,
              child: Container(
                height: 70.0,
                width: 70.0,
                decoration: BoxDecoration(
                    color: const Color(
                      0xFFECECEC,
                    ).withOpacity(0.5),
                    border: Border.all(
                      color: Colors.black.withOpacity(0.7),
                      width: 20.0,
                    ),
                    shape: BoxShape.circle),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
