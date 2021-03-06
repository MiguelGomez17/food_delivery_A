import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery/json/main_json.dart';
import 'package:line_icons/line_icons.dart';

class StoreDetailPage extends StatefulWidget {
  final String img;

  const StoreDetailPage({Key key, this.img}) : super(key: key);
  @override
  _StoreDetailPageState createState() => _StoreDetailPageState();
}

class _StoreDetailPageState extends State<StoreDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
      bottomSheet: getFooter(),
    );
  }

  Widget getFooter() {
    var size = MediaQuery.of(context).size;
    return Container(
      height: 80,
      width: size.width,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border(top: BorderSide(color: Colors.black.withOpacity(0.1)))),
      child: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Column(
          children: [
            Text(
              "\$15.00 away from a \$0.00 delivery fee",
              style: TextStyle(
                  color: Color(0xFF00954d), fontSize: 14, fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 60),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: size.width,
                  height: 150,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(widget.img), fit: BoxFit.cover)),
                ),
                SafeArea(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white, shape: BoxShape.circle),
                          child: Center(
                            child: Icon(
                              Icons.arrow_back,
                              size: 18,
                            ),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      IconButton(
                        icon: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white, shape: BoxShape.circle),
                          child: Center(
                            child: Icon(
                              Icons.favorite_border,
                              size: 18,
                            ),
                          ),
                        ),
                        onPressed: () {},
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Starbucks (Park Row at Beekman St)",
                    style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Container(
                        width: size.width - 30,
                        child: Text(
                          "Cafe - Coffee & Tea - Breakfast and Brunch - Bakery \$",
                          style: TextStyle(fontSize: 14, height: 1.3),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.15),
                              borderRadius: BorderRadius.circular(3)),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Icon(
                              Icons.hourglass_bottom,
                              color: Color(0xFF00954d),
                              size: 16,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.15),
                              borderRadius: BorderRadius.circular(3)),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              "40-50 Min",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.15),
                              borderRadius: BorderRadius.circular(3)),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Row(
                              children: [
                                Text(
                                  "4.7",
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Color(0xFF00954d),
                                  size: 17,
                                ),
                                Text(
                                  "(16)",
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Divider(
                    color: Colors.black.withOpacity(0.3),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Store Info",
                    style: customContent,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Container(
                        width: (size.width) * 0.80,
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              "assets/images/pin_icon.svg",
                              width: 15,
                              color: Colors.black.withOpacity(0.5),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "38 Park Row Frnt 4,New York,NY 1003",
                              style: TextStyle(fontSize: 14),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "More Info",
                          style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF00954d),
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Icon(
                        LineIcons.comment,
                        size: 15,
                        color: Color(0xFF00954d),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "People say...",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(peopleFeedback.length, (index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                                color: Color(0xFF00954d).withOpacity(0.2),
                                borderRadius: BorderRadius.circular(30)),
                            child: Center(
                                child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 15, right: 15),
                              child: Text(
                                peopleFeedback[index],
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xFF00954d),
                                    fontWeight: FontWeight.w500),
                              ),
                            )),
                          ),
                        );
                      }),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: size.width - 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.black.withOpacity(0.1))),
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Delivery fee",
                            style: TextStyle(color: Colors.black.withOpacity(0.5)),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: (size.width - 70) * 0.8,
                                child: Text(
                                  "There aren't enough couriers nearby,so the delivery fee is higher right now.",
                                  style: TextStyle(fontSize: 14, height: 1.5),
                                ),
                              ),
                              Container(
                                width: (size.width - 70) * 0.2,
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.black.withOpacity(0.15)),
                                  child: Center(
                                    child: Icon(
                                      Icons.arrow_circle_up_outlined,
                                      color: Colors.black.withOpacity(0.4),
                                      size: 18,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Divider(
                    color: Colors.black.withOpacity(0.3),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Menu',
                            style: TextStyle(fontSize: 14),
                          ),
                          Icon(
                            LineIcons.search,
                            size: 25,
                          )
                        ],
                      ),
                      SizedBox(height: 30),
                      Text(
                        "Packed For You",
                        style: TextStyle(
                            fontSize: 21, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 30),
                      Column(
                        children: List.generate(packForYou.length, (index) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 40),
                            child: Row(
                              children: [
                                Container(
                                    width: (size.width - 30) * 0.6,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          packForYou[index]['name'],
                                          style: TextStyle(
                                              fontSize: 16,
                                              height: 1.5,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          packForYou[index]['description'],
                                          style: TextStyle(height: 1.3),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          packForYou[index]['price'],
                                          style: TextStyle(
                                              height: 1.3,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    )),
                                SizedBox(
                                  width: 15,
                                ),
                                Expanded(
                                  child: Container(
                                    height: 110,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          left: 20, top: 10, bottom: 10),
                                      child: Image(
                                        image: NetworkImage(
                                            packForYou[index]['img']),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          );
                        }),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

TextStyle customParagraph =
    TextStyle(fontSize: 14, fontWeight: FontWeight.w500);
TextStyle customContent = TextStyle(fontSize: 16, fontWeight: FontWeight.w500);

TextStyle customTitle =
    TextStyle(fontSize: 20, fontWeight: FontWeight.w500, height: 1.3);
