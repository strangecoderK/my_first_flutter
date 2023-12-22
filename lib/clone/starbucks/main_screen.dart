import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:percent_indicator/percent_indicator.dart';

class StarBucksMain extends StatefulWidget {
  const StarBucksMain({super.key});

  @override
  State<StarBucksMain> createState() => _StarBucksMainState();
}

class _StarBucksMainState extends State<StarBucksMain> {
  int _selectedIndex = 0;
  bool isScrolled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationListener<UserScrollNotification>(
        onNotification: (notification) {
          if (notification.direction == ScrollDirection.forward) {
            setState(() {
              isScrolled = true;
            });
          } else if (notification.direction == ScrollDirection.reverse) {
            setState(() {
              isScrolled = false;
            });
          }
          return isScrolled;
        },
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              floating: false,
              expandedHeight: 280,
              flexibleSpace: FlexibleSpaceBar(
                background: Column(
                  children: [
                    Image.asset(
                      'assets/starbucks_1.png',
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '2',
                          style: TextStyle(color: Colors.orangeAccent),
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.orangeAccent,
                        ),
                        Text(
                          'until next Reward',
                          style: TextStyle(color: Colors.orangeAccent),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        new LinearPercentIndicator(
                          width: 280.0,
                          lineHeight: 5.0,
                          percent: 0.85,
                          backgroundColor: Colors.grey,
                          progressColor: Colors.orangeAccent,
                        ),
                        Spacer(),
                        Text(
                          '10',
                          style: TextStyle(fontSize: 30),
                        ),
                        Text(
                          '/12',
                          style: TextStyle(
                              fontSize: 20, color: Colors.orangeAccent),
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.orangeAccent,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(50),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.local_activity,
                      size: 30,
                    ),
                    TextButton(
                      onPressed: () {
                        print('news');
                      },
                      child: Text(
                        'what\'s new',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                    Icon(
                      Icons.pageview_sharp,
                      size: 30,
                    ),
                    TextButton(
                      onPressed: () {
                        print('coupon');
                      },
                      child: Text(
                        'Coupon',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.add_alert_rounded,
                      size: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  SizedBox(
                    height: 30,
                  ),
                  Image.network(
                      'https://image.istarbucks.co.kr/cardImg/20220907/009446_WEB.png'),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    constraints:
                        const BoxConstraints.tightFor(width: 400, height: 200),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                            constraints: const BoxConstraints.tightFor(
                                width: 400, height: 200),
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
// width: 300,
                                  child: Image.network(
                                    'https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMzA1MjVfMTUw%2FMDAxNjg0OTg5NzgxMDk3._pbLWY3_hEYtjmg6AMndGMmj4hs8zqcGyMrbajDlMgEg.aY9Tn23xngMhfYht1vH8ruARQTbWZXrpyqspvCHzWTcg.JPEG.kiwontech%2FNFT%25BD%25BA%25C5%25B8%25B9%25F7%25BD%25BA_%25281%2529.jpg&type=sc960_832',
                                    height: 200,
                                    width: 400,
                                  ),
                                ),
                              ],
                            )),
                        Container(
                            constraints: const BoxConstraints.tightFor(
                                width: 400, height: 200),
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
// width: 300,
                                  child: Image.network(
                                    'https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMzA1MjVfMTUw%2FMDAxNjg0OTg5NzgxMDk3._pbLWY3_hEYtjmg6AMndGMmj4hs8zqcGyMrbajDlMgEg.aY9Tn23xngMhfYht1vH8ruARQTbWZXrpyqspvCHzWTcg.JPEG.kiwontech%2FNFT%25BD%25BA%25C5%25B8%25B9%25F7%25BD%25BA_%25281%2529.jpg&type=sc960_832',
                                    height: 200,
                                    width: 400,
                                  ),
                                ),
                              ],
                            )),
                        Container(
                            constraints: const BoxConstraints.tightFor(
                                width: 400, height: 200),
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
// width: 300,
                                  child: Image.network(
                                    'https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMzA1MjVfMTUw%2FMDAxNjg0OTg5NzgxMDk3._pbLWY3_hEYtjmg6AMndGMmj4hs8zqcGyMrbajDlMgEg.aY9Tn23xngMhfYht1vH8ruARQTbWZXrpyqspvCHzWTcg.JPEG.kiwontech%2FNFT%25BD%25BA%25C5%25B8%25B9%25F7%25BD%25BA_%25281%2529.jpg&type=sc960_832',
                                    height: 200,
                                    width: 400,
                                  ),
                                ),
                              ],
                            )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Image.network(
                      'https://image.istarbucks.co.kr/img/event/2017_0414ev/ev_seq1293_img01.jpg'),
                  Image.network(
                      'https://image.istarbucks.co.kr/img/event/2017_0414ev/ev_seq1293_img02.jpg')
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.green[800],
        // shape: CircleBorder(),
        onPressed: () {},
        isExtended: isScrolled,
        icon: const Icon(Icons.motorcycle_rounded, color: Colors.white),
        label: const Text(
          'Delivers',
          style: TextStyle(color: Colors.white),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green[800],
        showUnselectedLabels: true,
        unselectedItemColor: Colors.black12,
        showSelectedLabels: true,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.payment), label: 'Pay'),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_drink), label: 'Order'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_sharp), label: 'Shop'),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: 'Other'),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
