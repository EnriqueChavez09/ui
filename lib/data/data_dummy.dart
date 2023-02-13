import 'package:flutter/material.dart';
import 'package:ui/models/models.dart';

class DataDummy {
  List<CategoryModel> listCategories = [
    CategoryModel(
      icon: Icons.house,
      name: "House",
      isSelected: false,
    ),
    CategoryModel(
      icon: Icons.hotel,
      name: "Hotel",
      isSelected: false,
    ),
    CategoryModel(
      icon: Icons.apartment,
      name: "Apartment",
      isSelected: false,
    ),
  ];

  List<SiteModel> listSites = [
    SiteModel(
      url:
          "https://media-cdn.tripadvisor.com/media/photo-s/17/74/2f/9f/img-20190506-084029-2.jpg",
      name: "Amazon Dream",
      location: "Amazonas",
      price: 103,
      rating: 4.3,
    ),
    SiteModel(
      url:
          "https://media-cdn.tripadvisor.com/media/photo-s/12/06/41/af/villa-la-punta-breakfast.jpg",
      name: "Villa la Punta",
      location: "Ica",
      price: 213,
      rating: 4.6,
    ),
    SiteModel(
      url:
          "https://media-cdn.tripadvisor.com/media/photo-s/17/d0/55/d7/getlstd-property-photo.jpg",
      name: "Hassinger Ranch",
      location: "Pozuzo",
      price: 267,
      rating: 4.8,
    ),
    SiteModel(
      url:
          "https://media-cdn.tripadvisor.com/media/photo-s/0d/40/98/76/amazonas-botanical-lodge.jpg",
      name: "Cumaceba Botanical Garden",
      location: "Loreto",
      price: 169,
      rating: 4.1,
    ),
  ];
  List<ImageModel> images = [
    ImageModel(url: "assets/images/room_1.jfif"),
    ImageModel(url: "assets/images/room_2.jfif"),
    ImageModel(url: "assets/images/room_3.jfif"),
    ImageModel(url: "assets/images/room_4.jfif"),
    ImageModel(url: "assets/images/room_5.jfif"),
  ];
  List<PlaceRoomModel> placesRoom = [
    PlaceRoomModel(
      bottom: 0.35,
      left: 0.2,
      name: "Sofa Cushions",
      isShowName: false,
    ),
    PlaceRoomModel(
      bottom: 0.25,
      left: 0.65,
      name: "Bed",
      isShowName: false,
    ),
    PlaceRoomModel(
      bottom: 0.65,
      left: 0.25,
      name: "Computer",
      isShowName: false,
    ),
    PlaceRoomModel(
      bottom: 0.7,
      left: 0.7,
      name: "Carpet",
      isShowName: false,
    ),
  ];
}
