import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:real_state_app/data.dart';
import 'package:real_state_app/detail.dart';
import 'package:real_state_app/filter.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  List<Property> properties = getPropertyList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 48, left: 24, right: 24, bottom: 16),
            child: TextField(
              style: TextStyle(
                fontSize: 28,
                height: 1,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              decoration: InputDecoration(
                hintText: 'Search',
                hintStyle: TextStyle(
                  fontSize: 28,
                  color: Colors.grey[400],
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey[400]),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey[400]),
                ),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey[400]),
                ),
                suffixIcon: Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: Icon(
                    Icons.search,
                    color: Colors.grey[400],
                    size: 28,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: Container(
                    height: 32.0,
                    child: Stack(
                      children: <Widget>[
                        ListView(
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            SizedBox(
                              width: 24.0,
                            ),
                            buildFilter('House'),
                            buildFilter('Price'),
                            buildFilter('Security'),
                            buildFilter('Bedrooms'),
                            buildFilter('Garage'),
                            buildFilter('Swimming Pool'),
                            SizedBox(
                              width: 8.0,
                            ),
                          ],
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            width: 28.0,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.centerRight,
                                end: Alignment.centerLeft,
                                stops: [0.0, 1.0],
                                colors: [
                                  Theme.of(context).scaffoldBackgroundColor,
                                  Theme.of(context)
                                      .scaffoldBackgroundColor
                                      .withOpacity(0.0),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _showBottomSheet();
                  },
                  child: Padding(
                    padding: EdgeInsets.only(left: 16.0, right: 24.0),
                    child: Text(
                      'Filters',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                right: 24.0, left: 24.0, top: 24.0, bottom: 12.0),
            child: Row(
              children: <Widget>[
                Text(
                  '53',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 8),
                Text(
                  'Results Found',
                  style: TextStyle(
                    fontSize: 24.0,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: ListView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                children: buildProperties(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildFilter(String filterName) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.0),
      margin: EdgeInsets.only(right: 12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
        border: Border.all(
          color: Colors.grey[300],
          width: 1,
        ),
      ),
      child: Center(
        child: Text(
          filterName,
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  List<Widget> buildProperties() {
    List<Widget> list = [];
    for (var i = 0; i < properties.length; i++) {
      list.add(
        Hero(
          tag: properties[i].frontImage,
          child: buildProperty(properties[i], i),
        ),
      );
    }
    return list;
  }

  Widget buildProperty(Property property, int index) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Detail(
              property: property,
            ),
          ),
        );
      },
      child: Card(
        margin: EdgeInsets.only(bottom: 24.0),
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        child: Container(
          height: 210.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(property.frontImage),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.5, 1.0],
                colors: [
                  Colors.transparent,
                  Colors.black.withOpacity(0.7),
                ],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: Colors.yellow[700],
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  width: 80,
                  padding: EdgeInsets.symmetric(vertical: 4.0),
                  child: Center(
                    child: Text(
                      'FOR ${property.label}',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(),
                ),
                Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          property.name,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '\$ ${property.price}',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 4),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.location_on,
                              color: Colors.white,
                              size: 14.0,
                            ),
                            SizedBox(width: 4),
                            Text(
                              property.location,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                              ),
                            ),
                            SizedBox(width: 8),
                            Icon(
                              Icons.zoom_out_map,
                              color: Colors.white,
                              size: 14.0,
                            ),
                            SizedBox(width: 4),
                            Text(
                              '${property.sqm} sq/m',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.star,
                              color: Colors.yellow[700],
                              size: 14,
                            ),
                            SizedBox(width: 4),
                            Text(
                              '${property.review}',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showBottomSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      builder: (BuildContext context) {
        return Wrap(
          children: <Widget>[
            Filter(),
          ],
        );
      },
    );
  }
}
