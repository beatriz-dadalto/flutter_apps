import 'package:flutter/material.dart';

class Filter extends StatefulWidget {
  @override
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  var selectedRange = RangeValues(400, 1000);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.only(right: 24.0, left: 24.0, top: 32.0, bottom: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                'Filter',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 8),
              Text(
                'your search',
                style: TextStyle(
                  fontSize: 24.0,
                ),
              ),
            ],
          ),
          SizedBox(height: 32),
          Row(
            children: <Widget>[
              Text(
                'Price',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 8),
              Text(
                'range',
                style: TextStyle(
                  fontSize: 24.0,
                ),
              ),
            ],
          ),
          RangeSlider(
            values: selectedRange,
            onChanged: (RangeValues newRange) {
              setState(() {
                selectedRange = newRange;
              });
            },
            min: 70,
            max: 1000,
            activeColor: Colors.blue[900],
            inactiveColor: Colors.grey[300],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                '\$70k',
                style: TextStyle(fontSize: 14),
              ),
              Text(
                '\$1000k',
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),
          SizedBox(height: 16),
          Text(
            'Rooms',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              buildOption(text: 'Any', selected: false),
              buildOption(text: '1', selected: false),
              buildOption(text: '2', selected: true),
              buildOption(text: '3+', selected: false),
            ],
          ),
          SizedBox(height: 16),
          Text(
            'Bathrooms',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              buildOption(text: 'Any', selected: true),
              buildOption(text: '1', selected: false),
              buildOption(text: '2', selected: false),
              buildOption(text: '3+', selected: false),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildOption({String text, bool selected}) {
    return Container(
      height: 45.0,
      width: 65.0,
      decoration: BoxDecoration(
        color: selected ? Colors.blue[900] : Colors.transparent,
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
        border: Border.all(
          width: selected ? 0 : 1,
          color: Colors.grey,
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: selected ? Colors.white : Colors.black,
            fontSize: 14.0,
          ),
        ),
      ),
    );
  }
}
