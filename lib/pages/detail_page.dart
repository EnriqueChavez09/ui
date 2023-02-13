import 'package:flutter/material.dart';
import 'package:ui/data/data_dummy.dart';
import 'package:ui/global/global.dart';

class DetailPage extends StatelessWidget {
  DataDummy data = DataDummy();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    final arguments = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(
                      vertical: 20.0,
                    ),
                    width: width,
                    child: const Text(
                      "Details",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 8.0,
                    left: 10.0,
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: width,
                      height: 280.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          12.0,
                        ),
                        image: DecorationImage(
                          image: NetworkImage(
                            arguments["url"],
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${arguments["name"]}",
                                style: const TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Row(
                                children: [
                                  ...List.generate(
                                    5,
                                    (index) => Icon(
                                      Icons.star,
                                      color: Colors.amber.shade500,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10.0,
                                  ),
                                  Text(
                                    "${arguments["rating"]}",
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "\$${arguments["price"]}",
                              style: const TextStyle(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const Text(
                              "/Month",
                              style: TextStyle(
                                fontSize: 13.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 40.0,
                              height: 40.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                color: const Color(0xFFB9B8B4).withOpacity(
                                  0.2,
                                ),
                              ),
                              child: Icon(
                                Icons.bed,
                                color: CustomColors.ligthBlue100,
                              ),
                            ),
                            const SizedBox(
                              width: 20.0,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Bedrooms",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    color: CustomColors.grey,
                                  ),
                                ),
                                const Text(
                                  "5 rooms",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 40.0,
                              height: 40.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                color: const Color(0xFFB9B8B4).withOpacity(
                                  0.2,
                                ),
                              ),
                              child: Icon(
                                Icons.bathroom_outlined,
                                color: CustomColors.ligthBlue100,
                              ),
                            ),
                            const SizedBox(
                              width: 20.0,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Bathrooms",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    color: CustomColors.grey,
                                  ),
                                ),
                                const Text(
                                  "2 rooms",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const Text(
                      "Deskription",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15.0,
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "Mollit exercitation reprehenderit pariatur elit non aliquip dolore labore. Labore incididunt laborum aliquip minim sint mollit nostrud cupidatat. Est deserunt amet id aute elit non ullamco reprehenderit tempor consequat sunt. Nulla nostrud id adipisicing enim non minim. Anim elit amet quis deserunt pariatur ex deserunt enim pariatur ullamco ullamco. Amet ad occaecat nulla officia anim pariatur dolor consectetur nostrud qui. Ullamco voluptate velit ut laborum exercitation id enim proident consectetur cupidatat ea aliquip dolor.",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 12.0,
                        color: CustomColors.grey,
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const Text(
                      "Gallery",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15.0,
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ...List.generate(
                            data.images.length,
                            (index) => GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, "gallery",
                                    arguments: {"url": data.images[index].url});
                              },
                              child: Container(
                                margin: const EdgeInsets.only(
                                  right: 15.0,
                                ),
                                width: 80.0,
                                height: 80.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    10.0,
                                  ),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      data.images[index].url,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: CustomColors.ligthBlue100,
                        minimumSize: Size(
                          width,
                          45.0,
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Book Now",
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
