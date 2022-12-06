import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instant_sale/Constants/colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key, this.tag}) : super(key: key);
  final tag;
  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int indexValue = 0;
  bool isExpandable = false;

  CarouselController controller = CarouselController();
  final List<String> imgList = [
    'https://firebasestorage.googleapis.com/v0/b/buyersapp-4229f.appspot.com/o/My%20project.png?alt=media&token=3b4854da-e4ec-4672-b4c8-5b0da7d4d0ca',
    'https://firebasestorage.googleapis.com/v0/b/buyersapp-4229f.appspot.com/o/My%20project.png?alt=media&token=3b4854da-e4ec-4672-b4c8-5b0da7d4d0ca',
    'https://firebasestorage.googleapis.com/v0/b/buyersapp-4229f.appspot.com/o/My%20project.png?alt=media&token=3b4854da-e4ec-4672-b4c8-5b0da7d4d0ca',
    'https://firebasestorage.googleapis.com/v0/b/buyersapp-4229f.appspot.com/o/My%20project.png?alt=media&token=3b4854da-e4ec-4672-b4c8-5b0da7d4d0ca',
    'https://firebasestorage.googleapis.com/v0/b/buyersapp-4229f.appspot.com/o/My%20project.png?alt=media&token=3b4854da-e4ec-4672-b4c8-5b0da7d4d0ca',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        child: PhysicalModel(
          color: detailBottomBgColor,
          elevation: 5,
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(15.0), topLeft: Radius.circular(20.0)),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 100,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              backgroundColor: grey,
                              radius: 27,
                            ),
                            CircleAvatar(
                              backgroundColor: white,
                              radius: 8,
                              child: CircleAvatar(
                                backgroundColor: green,
                                radius: 6,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Royal P.',
                                  style: TextStyle(
                                      color: white,
                                      fontSize: 15.0,
                                      fontFamily: 'Lora',
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  width: 7,
                                ),
                                CircleAvatar(
                                  backgroundColor: blueAccent,
                                  radius: 8,
                                  child: Icon(
                                    Icons.done_outlined,
                                    size: 12,
                                    color: white,
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: hotColor,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '4.9 ',
                                  style: TextStyle(
                                    color: white,
                                    fontSize: 15.0,
                                    fontFamily: 'Lora',
                                  ),
                                ),
                                Text(
                                  '(120 Reviews)',
                                  style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    color: grey,
                                    fontSize: 15.0,
                                    fontFamily: 'Lora',
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    Container(
                      height: 48,
                      width: MediaQuery.of(context).size.width * 0.33,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: detailBottomButtonColor,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            CupertinoIcons.chat_bubble_text,
                            color: white,
                            size: 25,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Chat to Buy',
                            style: TextStyle(
                                color: white,
                                fontFamily: 'Lora',
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                  color: bgCColor,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                ),
                child: Column(
                  children: [
                    Hero(
                      tag: widget.tag,
                      child: CarouselSlider(
                        options: CarouselOptions(
                            height: 180,
                            aspectRatio: 16 / 9,
                            viewportFraction: 0.8,
                            initialPage: 0,
                            enableInfiniteScroll: false,
                            reverse: false,
                            autoPlay: true,
                            autoPlayInterval: const Duration(seconds: 3),
                            autoPlayAnimationDuration:
                                const Duration(milliseconds: 800),
                            autoPlayCurve: Curves.fastOutSlowIn,
                            enlargeCenterPage: false,
                            scrollDirection: Axis.horizontal,
                            onPageChanged: (val, _) {
                              setState(() {
                                setState(() {
                                  indexValue = val;
                                });
                              });
                            }),
                        items: imgList.map((item) {
                          return SizedBox(
                            width: 300,
                            height: 100,
                            child: Image.network(
                              item,
                              height: 100,
                              fit: BoxFit.fill,
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 2.0),
                      child: AnimatedSmoothIndicator(
                        activeIndex: indexValue,
                        count: imgList.length,
                        effect: ScrollingDotsEffect(
                            activeDotColor: fullBlack,
                            dotColor: grey,
                            fixedCenter: true,
                            dotWidth: 8.0,
                            dotHeight: 8.0,
                            activeDotScale: 2.5,
                            spacing: 12,
                            maxVisibleDots: 5),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () => Navigator.pop(context),
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: white,
                        child: Icon(
                          Icons.arrow_back_ios_new_outlined,
                          color: fullBlack,
                          size: 20.0,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: white,
                          child: Icon(
                            Icons.favorite_border_outlined,
                            color: fullBlack,
                            size: 20.0,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: white,
                          child: Icon(
                            Icons.more_horiz_outlined,
                            color: fullBlack,
                            size: 20.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.245,
                left: 20,
                child: Container(
                  width: 80,
                  height: 35,
                  decoration: BoxDecoration(
                    color: grey,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      'Decaa',
                      style: TextStyle(
                          color: white, fontSize: 15, fontFamily: 'Lora'),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.date_range,
                      color: grey,
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      '20 Feb 2021',
                      style: TextStyle(
                          color: grey, fontSize: 15, fontFamily: 'Lora'),
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      color: grey,
                    ),
                    Text(
                      '3.00Km',
                      style: TextStyle(
                          color: grey, fontSize: 15, fontFamily: 'Lora'),
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.favorite_border_outlined,
                      color: grey,
                    ),
                    Text(
                      '450',
                      style: TextStyle(
                          color: grey, fontSize: 15, fontFamily: 'Lora'),
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.remove_red_eye_outlined,
                      color: grey,
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      '2525',
                      style: TextStyle(
                          color: grey, fontSize: 15, fontFamily: 'Lora'),
                    )
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20, bottom: 10),
            child: Text(
              '1965 Shelby Cobra Backdraft Racing Roadster.',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: grey,
                  fontFamily: 'Lora',
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20, bottom: 10),
            child: Text(
              'Rs 9,100',
              style: TextStyle(
                  color: fullBlack,
                  fontFamily: 'Lora',
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: bgCColor,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'CONDITION',
                              style: TextStyle(
                                  color: grey,
                                  fontSize: 20,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Used',
                              style: TextStyle(
                                  color: fullBlack,
                                  fontSize: 18,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Text(
                              'MODEL',
                              style: TextStyle(
                                  color: grey,
                                  fontSize: 18,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'Cobra',
                              style: TextStyle(
                                  color: fullBlack,
                                  fontSize: 18,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Text(
                              'TRIM',
                              style: TextStyle(
                                  color: grey,
                                  fontSize: 18,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'Backdraft...',
                              style: TextStyle(
                                  color: fullBlack,
                                  fontSize: 18,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Text(
                              'MILEAGE',
                              style: TextStyle(
                                  color: grey,
                                  fontSize: 18,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              '100',
                              style: TextStyle(
                                  color: fullBlack,
                                  fontSize: 18,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'MAKE',
                              style: TextStyle(
                                  color: grey,
                                  fontSize: 18,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'Shelby',
                              style: TextStyle(
                                  color: fullBlack,
                                  fontSize: 18,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Text(
                              'TYPE',
                              style: TextStyle(
                                  color: grey,
                                  fontSize: 18,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'Convertible',
                              style: TextStyle(
                                  color: fullBlack,
                                  fontSize: 18,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Text(
                              'YEAR',
                              style: TextStyle(
                                  color: grey,
                                  fontSize: 18,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              '1965',
                              style: TextStyle(
                                  color: fullBlack,
                                  fontSize: 18,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Text(
                              'COLOR',
                              style: TextStyle(
                                  color: grey,
                                  fontSize: 18,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'Yellow',
                              style: TextStyle(
                                  color: fullBlack,
                                  fontSize: 18,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'More',
                          style: TextStyle(
                              color: green,
                              fontSize: 20.0,
                              fontFamily: 'Lora',
                              fontWeight: FontWeight.bold),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              isExpandable = !isExpandable;
                            });
                          },
                          child: Container(
                            width: 25.0,
                            height: 25.0,
                            margin: const EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: green,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(25)),
                            child: Icon(
                              Icons.keyboard_arrow_down,
                              size: 20,
                              color: green,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Visibility(
                      visible: isExpandable,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Description",
                            style: TextStyle(
                                color: fullBlack,
                                decoration: TextDecoration.underline,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Roboto'),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "This the description of the product that you are going to buy. Its condition is used and it is made by Shelby company. the Model of this product is Cobra. and type is Convertible. The year of this product is 1965.",
                            style: TextStyle(
                                color: fullBlack,
                                fontSize: 16,
                                fontFamily: 'Roboto'),
                            textAlign: TextAlign.justify,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Ad posted at",
                            style: TextStyle(
                                color: fullBlack,
                                decoration: TextDecoration.underline,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Roboto'),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Image.asset('assets/images/ad_pic.jpeg'),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
