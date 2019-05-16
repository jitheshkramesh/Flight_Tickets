import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

const TextStyle dropdownLabelStyle =
    TextStyle(color: Colors.white, fontSize: 16.0);
const TextStyle dropdownMenuItemStyle =
    TextStyle(color: Colors.black, fontSize: 16.0);
const TextStyle viewAllStyle = TextStyle(color: Colors.black, fontSize: 16.0);
final formatCurrency = new NumberFormat.simpleCurrency();

class HomeBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          child: Row(
            children: <Widget>[
              Text(
                "Currently matched items",
                style: dropdownMenuItemStyle,
              ),
              Spacer(),
              Text(
                "View All(12)",
                style: viewAllStyle,
              ),
            ],
          ),
        ),
        Container(
          height: 250.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: cityCards,
          ),
        )
      ],
    );
  }
}

List<CityCard> cityCards = [
  CityCard(
      cityName: "New York City",
      discount: "10",
      imagePath: "assets/images/1.jpg",
      monthYear: "Nov2019",
      newPrice: "1000.00",
      oldPrice: "1200.0"),
  CityCard(
      cityName: "New York City",
      discount: "10",
      imagePath: "assets/images/2.jpg",
      monthYear: "Nov2019",
      newPrice: "1000.00",
      oldPrice: "1200.0"),
  CityCard(
      cityName: "New York City",
      discount: "10",
      imagePath: "assets/images/4.jpg",
      monthYear: "Nov2019",
      newPrice: "1000.00",
      oldPrice: "1200.0")
];

class CityCard extends StatelessWidget {
  final String imagePath, cityName, monthYear, discount, oldPrice, newPrice;
  CityCard(
      {this.cityName,
      this.discount,
      this.imagePath,
      this.monthYear,
      this.newPrice,
      this.oldPrice});
  @override
  Widget build(BuildContext context) {
    var stack = Stack(
      children: <Widget>[
        Container(
          width: 200.0,
          height: 200.0,
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          left: 0.0,
          bottom: 0.0,
          height: 50.0,
          width: 200.0,
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [Colors.red, Colors.green])),
          ),
        ),
        Positioned(
          left: 10.0,
          bottom: 10.0,
          right: 10.0,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    cityName,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 14.0),
                  ),
                  Text(
                    monthYear,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 14.0),
                  ),
                ],
              ),
              SizedBox(
                width: 16.0,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                child: Text(
                  discount,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 14.0),
                ),
              ),
            ],
          ),
        )
      ],
    );
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            child: stack,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              '${formatCurrency.format(double.parse(newPrice))}',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 5.0,
            ),
            Text(
              '(${formatCurrency.format(double.parse(oldPrice))})',
              style:
                  TextStyle(color: Colors.grey, fontWeight: FontWeight.normal),
            )
          ],
        )
      ],
    );
  }
}
