import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_app/constants.dart';


class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      height: 80,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.date_range_outlined),
            tooltip: 'Reservation',
            onPressed: null, // null disables the button
          ),
          // Expanded expands its child to fill the available space.
          IconButton(
            icon: Icon(Icons.directions_bus_outlined),
            tooltip: 'Ambulance',
            onPressed: null,
          ),
          IconButton(
            icon: Icon(Icons.bar_chart),
            tooltip: 'Search',
            onPressed: null,
          ),
          // BottomNavItem(
          //   title: "Reservation",
          //   svgScr: "assets/icons/calendar.svg",
          // ),
          // BottomNavItem(
          //   title: "dispatching",
          //   svgScr: "assets/icons/ambulance.svg",
          //   isActive: true,
          // ),
          // BottomNavItem(
          //   title: "Chart",
          //   svgScr: "assets/icons/search.svg",
          // ),
        ],
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  final String svgScr;
  final String title;
  final Function press;
  final bool isActive;
  const BottomNavItem({
    Key key,
    this.svgScr,
    this.title,
    this.press,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          SvgPicture.asset(
            svgScr,
            color: isActive ? kActiveIconColor : kTextColor,
          ),
          Text(
            title,
            style: TextStyle(color: isActive ? kActiveIconColor : kTextColor),
          ),
        ],
      ),
    );
  }
}
