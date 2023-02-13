import 'package:flutter/material.dart';
import 'package:ui/global/global.dart';
import 'package:ui/models/models.dart';

class ItemCategoryWidget extends StatefulWidget {
  CategoryModel category;
  ItemCategoryWidget({
    required this.category,
  });

  @override
  State<ItemCategoryWidget> createState() => _ItemCategoryWidgetState();
}

class _ItemCategoryWidgetState extends State<ItemCategoryWidget> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        isSelected = !isSelected;
        setState(() {});
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 8.0,
          horizontal: 15.0,
        ),
        margin: const EdgeInsets.symmetric(
          horizontal: 5.0,
        ),
        decoration: BoxDecoration(
          color: isSelected
              ? CustomColors.ligthBlue100.withOpacity(0.15)
              : Colors.white,
          borderRadius: BorderRadius.circular(
            10.0,
          ),
        ),
        child: Row(
          children: [
            Icon(
              widget.category.icon,
              color: CustomColors.ligthBlue100,
              size: 30.0,
            ),
            const SizedBox(
              width: 5.0,
            ),
            Text(
              "${widget.category.name}",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: isSelected ? CustomColors.blue : CustomColors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
