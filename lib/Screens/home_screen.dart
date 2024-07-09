import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/firstslid_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

List slider = [
  'asset/images/s1.png',
  'asset/images/s2.png',
  'asset/images/s3.png',
  'asset/images/s4.png'
];
List name = ['On offer', 'Kids', 'Women', 'Men', 'abcdef'];
List image = [
  'asset/images/img.png',
];

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            const Text(
              'ma',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Colors.blue),
            ),
            const Text(
              'x',
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 40, color: Colors.red),
            ),
            const SizedBox(
              width: 210,
            ),
            IconButton(
                onPressed: () {}, icon: const Icon(CupertinoIcons.heart)),
            Stack(
              children: [
                const Icon(Icons.notifications_none),
                Positioned(child: Container())
              ],
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                height: 50,
                width: 350,
                color: CupertinoColors.lightBackgroundGray,
                child: const TextField(
                  decoration: InputDecoration(
                      fillColor: CupertinoColors.lightBackgroundGray,
                      focusColor: CupertinoColors.lightBackgroundGray,
                      hintText: 'What are you looking for?',
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: Icon(CupertinoIcons.barcode_viewfinder)),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 100,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: name.length,
                itemBuilder: (context, index) {
                  return firstslid(name: name[index], img: image[0]);
                },
              ),
            ),
            Container(
              color: Colors.blue,
              height: 60,
              width: double.infinity,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Max mania sale! 6500+ style under 399+ extra 200 \t offer on 1999. code:MMS200',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              child: CarouselSlider.builder(
                  itemCount: slider.length,
                  itemBuilder: (context, index, realIndex) {
                    return SizedBox(
                        height: 300,
                        width: MediaQuery.of(context).size.width,
                        child: Image.asset(
                          slider[index],
                          fit: BoxFit.fill,
                        ));
                  },
                  options: CarouselOptions(
                    height: 400,
                    autoPlay: true,
                  )),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              color: CupertinoColors.lightBackgroundGray,
              height: 5,
              width: MediaQuery.of(context).size.width,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Offer Zone',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 150,
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: CupertinoColors.lightBackgroundGray,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 150,
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: CupertinoColors.lightBackgroundGray,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: CupertinoColors.inactiveGray,
        selectedItemColor: Colors.blue,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.home,
              color: CupertinoColors.inactiveGray,
            ),
            label: "home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.manage_search_rounded,
                color: CupertinoColors.inactiveGray),
            label: 'Category',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined,
                  color: CupertinoColors.inactiveGray),
              label: 'Basket'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.heart,
                  color: CupertinoColors.inactiveGray),
              label: 'Favorites'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person, color: CupertinoColors.inactiveGray),
              label: 'Account'),
        ],
      ),
    );
  }
}
