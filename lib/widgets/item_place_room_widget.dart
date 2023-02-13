import 'package:flutter/material.dart';
import 'package:ui/global/global.dart';
import 'package:ui/models/models.dart';

class ItemPlaceRoomWidget extends StatefulWidget {
  PlaceRoomModel place;
  ItemPlaceRoomWidget({
    required this.place,
  });

  @override
  State<ItemPlaceRoomWidget> createState() => _ItemPlaceRoomWidgetState();
}

class _ItemPlaceRoomWidgetState extends State<ItemPlaceRoomWidget> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Positioned(
      bottom: height * widget.place.bottom,
      left: width * widget.place.left,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(
              5.0,
            ),
            decoration: BoxDecoration(
                color: widget.place.isShowName
                    ? Colors.black.withOpacity(0.7)
                    : Colors.black.withOpacity(0),
                borderRadius: BorderRadius.circular(5.0)),
            child: Text(
              widget.place.name,
              style: TextStyle(
                color: widget.place.isShowName
                    ? CustomColors.white
                    : CustomColors.white.withOpacity(0),
              ),
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          GestureDetector(
            onTap: () {
              widget.place.isShowName = !widget.place.isShowName;
              setState(() {});
            },
            child: Container(
              height: 30.0,
              width: 30.0,
              decoration: BoxDecoration(
                  color: const Color(
                    0xFFECECEC,
                  ).withOpacity(0.5),
                  border: Border.all(
                    color: Colors.black.withOpacity(0.7),
                    width: 10.0,
                  ),
                  shape: BoxShape.circle),
            ),
          ),
        ],
      ),
    );
  }
}
