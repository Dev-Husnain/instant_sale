import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instant_sale/Screens/details.dart';

import '../Constants/colors.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController searchController = TextEditingController();

  List categories = [
    {
      'image': 'assets/images/mobiles.png',
      'name': 'Mobiles',
    },
    {
      'image': 'assets/images/car.png',
      'name': 'Vehicles',
    },
    {
      'image': 'assets/images/property_sale.png',
      'name': 'Property for Sale',
    },
    {
      'image': 'assets/images/house.png',
      'name': 'Property for Rent',
    },
    {
      'image': 'assets/images/electric.png',
      'name': 'Electronics & Home Appliances',
    },
    {
      'image': 'assets/images/motorbike.png',
      'name': 'Bikes',
    },
    {
      'image': 'assets/images/agriculture.png',
      'name': 'Business, Industrial & Agriculture',
    },
    {
      'image': 'assets/images/services.png',
      'name': 'Services',
    },
    {
      'image': 'assets/images/job.png',
      'name': 'Jobs',
    },
    {
      'image': 'assets/images/animals.png',
      'name': 'Animals',
    },
    {
      'image': 'assets/images/furniture.png',
      'name': 'Furniture & Home Decor',
    },
    {
      'image': 'assets/images/fashion.png',
      'name': 'Fashion & Beauty',
    },
    {
      'image': 'assets/images/books.png',
      'name': 'Books, Sports & Hobbies',
    },
    {
      'image': 'assets/images/kids.png',
      'name': 'Kids',
    },
  ];
  List recommended = [
    {
      'imageLink':
          'https://5.imimg.com/data5/RI/PT/MY-26779310/bmw-power-x-cycle-500x500.jpg',
      'name': 'iBike 7 Speed',
      'price': '\$700',
      'label': 'Dhacca',
      'sellerName': 'Robert J.',
      'rating': '4.9',
      'category': 'Bike, Sports & Outdoors',
      'distance': '2.5Km',
      'time': '2 hours ago',
      'isHot': true,
      'isFavourite': true,
    },
    {
      'imageLink':
          'https://images.unsplash.com/photo-1540518614846-7eded433c457?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=857&q=80',
      'name': 'MG Hector to KIA',
      'price': '\$9100',
      'label': 'Dhacca',
      'sellerName': 'Robert J.',
      'rating': '4.9',
      'category': 'Bike, Sports & Outdoors',
      'distance': '2.5Km',
      'time': '2 hours ago',
      'isHot': false,
      'isFavourite': false,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.26,
              child: Stack(
                children: [
                  Container(
                    color: bgColor,
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.2,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  const Text(
                                    'Bangalore',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Lora',
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                    width: 18,
                                    height: 18,
                                    margin: const EdgeInsets.only(left: 3.0),
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    child: const Icon(
                                      Icons.keyboard_arrow_down_outlined,
                                      color: Colors.white,
                                      size: 18,
                                    ),
                                  )
                                ],
                              ),
                              const Icon(
                                CupertinoIcons.chat_bubble_text,
                                color: Colors.black,
                                size: 30,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            'Holo',
                            style: TextStyle(
                                color: deepPurple,
                                fontSize: 25.0,
                                fontFamily: 'Lora',
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          const Text(
                            'Buy and Sell Stuff',
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Lora',
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20.0, right: 20, top: 135),
                    child: Material(
                      elevation: 3,
                      shadowColor: greyDark,
                      borderRadius: BorderRadius.circular(20),
                      child: TextFormField(
                        controller: searchController,
                        keyboardType: TextInputType.text,
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          prefixIcon: Icon(
                            CupertinoIcons.search,
                            color: Colors.black,
                          ),
                          hintText: 'Find vehicle, Furniture and more...',
                          hintStyle: TextStyle(color: Colors.grey),
                          contentPadding: EdgeInsets.all(20.0),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'What are you looking for?',
                    style: TextStyle(
                        color: fullBlack,
                        fontSize: 20.0,
                        fontFamily: 'Lora',
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Text(
                        'See all',
                        style: TextStyle(
                            color: green,
                            fontSize: 15,
                            fontFamily: 'Lora',
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        width: 20,
                        height: 20,
                        margin: const EdgeInsets.only(left: 3.0),
                        decoration: BoxDecoration(
                          color: green,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: const Icon(
                          Icons.keyboard_arrow_right_outlined,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.36,
              width: double.infinity,
              child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: GridView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: categories.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              childAspectRatio: 3 / 2,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,
                              crossAxisCount: 2),
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailScreen(
                                  tag: 'cat${index.toString()}',
                                ),
                              ),
                            );
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.blue,
                                radius: 35,
                                child: Hero(
                                  tag: 'cat${index.toString()}',
                                  child: Image(
                                    image:
                                        AssetImage(categories[index]['image']),
                                    height: 50,
                                    width: 100,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                categories[index]['name'],
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: catTextColor,
                                    fontSize: 14.0,
                                    fontFamily: 'Lora'),
                              )
                            ],
                          ),
                        );
                      })),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                'New Recommendations',
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Lora',
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
              width: double.infinity,
              child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: GridView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: recommended.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              childAspectRatio: 3 / 2,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,
                              crossAxisCount: 1),
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    DetailScreen(tag: index.toString()),
                              ),
                            );
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.6,
                                    height: 170.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.0),
                                      color: green,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20.0),
                                      child: Hero(
                                        tag: index.toString(),
                                        child: CachedNetworkImage(
                                          fit: BoxFit.fill,
                                          imageUrl: recommended[index]
                                              ['imageLink'],
                                          placeholder: (context, url) =>
                                              const Center(
                                            child: SizedBox(
                                              height: 30,
                                              width: 30,
                                              child:
                                                  CircularProgressIndicator(),
                                            ),
                                          ),
                                          errorWidget: (context, url, error) =>
                                              const Icon(Icons.error,
                                                  color: Colors.redAccent,
                                                  size: 40.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                      left: MediaQuery.of(context).size.width *
                                          0.5,
                                      top: 5,
                                      child: Container(
                                        width: 30,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          color: grey.withOpacity(0.8),
                                        ),
                                        child: recommended[index]['isFavourite']
                                            ? Icon(
                                                Icons.favorite,
                                                color: white,
                                                size: 20,
                                              )
                                            : Icon(
                                                Icons.favorite_border_outlined,
                                                color: white,
                                                size: 20,
                                              ),
                                      )),
                                  Positioned(
                                      left: 5,
                                      top: 130,
                                      child: Container(
                                        width: 60,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          color: grey.withOpacity(0.8),
                                        ),
                                        child: Center(
                                          child: Text(
                                            recommended[index]['label'],
                                            style: TextStyle(
                                                color: white,
                                                fontFamily: 'Lora',
                                                fontSize: 12),
                                          ),
                                        ),
                                      )),
                                  Positioned(
                                    left: MediaQuery.of(context).size.width *
                                        0.48,
                                    top: 130,
                                    child: recommended[index]['isHot']
                                        ? Container(
                                            width: 40,
                                            height: 30,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                              color: grey.withOpacity(0.8),
                                            ),
                                            child: Icon(
                                              Icons
                                                  .local_fire_department_outlined,
                                              color: hotColor,
                                            ),
                                          )
                                        : const SizedBox(),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 7,
                              ),
                              Text(
                                recommended[index]['name'],
                                style: TextStyle(
                                    color: grey,
                                    fontFamily: 'Lora',
                                    fontSize: 16),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                recommended[index]['price'],
                                style: TextStyle(
                                    color: fullBlack,
                                    fontFamily: 'Lora',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text(
                                    recommended[index]['sellerName'],
                                    style: TextStyle(
                                        color: grey,
                                        fontFamily: 'Lora',
                                        fontSize: 16),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: hotColor,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    recommended[index]['rating'],
                                    style: TextStyle(
                                        color: fullBlack,
                                        fontFamily: 'Lora',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                recommended[index]['category'],
                                style: TextStyle(
                                    color: grey,
                                    fontFamily: 'Lora',
                                    fontSize: 16),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on_outlined,
                                    color: grey,
                                    size: 20,
                                  ),
                                  Text(
                                    recommended[index]['distance'],
                                    style: TextStyle(
                                        color: grey,
                                        fontFamily: 'Lora',
                                        fontSize: 16),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    Icons.watch_later_outlined,
                                    color: grey,
                                    size: 16,
                                  ),
                                  const SizedBox(
                                    width: 2,
                                  ),
                                  Text(
                                    recommended[index]['time'],
                                    style: TextStyle(
                                        color: grey,
                                        fontFamily: 'Lora',
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      })),
            ),
          ],
        ),
      ),
    );
  }
}
