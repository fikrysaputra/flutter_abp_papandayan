import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _Dashboard createState() => _Dashboard();
}

class _Dashboard extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEBEDCF),
      body: Column(
        children: <Widget>[
          const SizedBox(height: 110),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    Text(
                      "My Family",
                      style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                    ),
                     SizedBox(height: 4),
                     Text(
                      "Dashboard",
                        style: TextStyle(
                            color: Color(0xff436904),
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  alignment: Alignment.topCenter,
                  icon: const Icon(Icons.logout_outlined, color: Colors.red, size: 30.0),
                )
              ],
            ),
          ),
          const SizedBox(height: 40),
          GridDashboard()
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class GridDashboard extends StatelessWidget {
  Items item1 = Items(
      title: "Calendar",
      subtitle: "March, Wednesday",
      event: "3 Events",
      img: "images/calendar.png");

  Items item2 = Items(
    title: "Groceries",
    subtitle: "Bocali, Apple",
    event: "4 Items",
    img: "images/food.png",
  );
  Items item3 = Items(
    title: "Locations",
    subtitle: "Lucy Mao going to Office",
    event: "",
    img: "images/map.png",
  );
  Items item4 = Items(
    title: "Activity",
    subtitle: "Rose favirited your Post",
    event: "",
    img: "images/festival.png",
  );
  Items item5 = Items(
    title: "To do",
    subtitle: "Homework, Design",
    event: "4 Items",
    img: "images/todo.png",
  );
  Items item6 = Items(
    title: "Settings",
    subtitle: "",
    event: "2 Items",
    img: "images/setting.png",
  );

  GridDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Items> myList = [item1, item2, item3, item4, item5, item6];
    return Flexible(
      child: GridView.count(
        childAspectRatio: 1.0,
        padding: const EdgeInsets.only(left: 16, right: 16),
        crossAxisCount: 2,
        crossAxisSpacing: 18,
        mainAxisSpacing: 18,
        children: myList.map((data) {
          return Container(
            decoration: BoxDecoration(
              color: const Color(0xFF9dbe76),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(data.img, width: 42),
                const SizedBox(height: 14),
                Text(
                  data.title,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                ),
                const SizedBox(height: 8),
                Text(
                  data.subtitle,
                  style: const TextStyle(
                      color: Colors.white38,
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                const SizedBox(height: 14),
                Text(
                  data.event,
                  style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                    ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}

class Items {
  String title;
  String subtitle;
  String event;
  String img;
  Items({required this.title, required this.subtitle, required this.event,required this.img});
}
