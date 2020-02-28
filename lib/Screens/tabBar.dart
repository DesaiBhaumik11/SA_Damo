import 'dart:ui';

import 'package:flutter/material.dart';

class ProductDetailPage extends StatefulWidget {

  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage>
    with TickerProviderStateMixin {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.chevron_left,
            color: Colors.black,
          ),
          onPressed: () {

          },
        ),
        backgroundColor: Colors.white,
        title: Text(
          "PRODUCT DETAIL",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: _buildProductDetailsPage(context),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  _buildProductDetailsPage(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return ListView(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(1.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _buildProductImagesWidgets(),
            ],
          ),
        ),
      ],
    );
  }

  _buildDivider(Size screenSize) {
    return Column(
      children: <Widget>[
        Container(
          color: Colors.grey[600],
          width: screenSize.width,
          height: 0.25,
        ),
      ],
    );
  }

  _buildProductImagesWidgets() {
    TabController imagesController =
    TabController(length: 5, vsync: this);

    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Container(
        height: 200.0,
        child: Center(
          child: DefaultTabController(
            length:5,
            child: Stack(
              children: <Widget>[
                TabBarView(
                  controller: imagesController,
                  children:[
                    Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ7wf7JhjlGgO6sUsONxfT3BYfPwTZ4PRMQAdrpPFzfYF0lpnwv",fit: BoxFit.contain,),
                    Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT0OEXyCvOJM5vXgHllZkRyH4kGYfqwjccIU7oYX4NlKKhtUSFZ",fit: BoxFit.cover),
                    Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcR-7brbCKCe4oRe2SOy4J6DlyrXcgsaDjzYR7FlgUP-akqSULSv",fit: BoxFit.cover),
                    Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTkn7sMNC4dxtGbFsCmZAFzTRHuSaIlTT8huBGN5Q3GWvvVhoVt",fit: BoxFit.contain),
                    Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRCe481-Ir3Gfbw4uRpCLne9RKe68hkL_p2M8RC7Seld4UsU-c9",fit: BoxFit.contain),
                  ]
                ),
                Container(
                  alignment: FractionalOffset(0.5, 0.97),
                  child: TabPageSelector(
                    indicatorSize: 10,
                    controller: imagesController,
                    selectedColor: Colors.green,
                    color: Colors.grey[100],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _buildBottomNavigationBar() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50.0,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Flexible(
            fit: FlexFit.tight,
            flex: 1,
            child: RaisedButton(
              onPressed: () {},
              color: Colors.grey,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.list,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 4.0,
                    ),
                    Text(
                      "SAVE",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: RaisedButton(
              onPressed: () {},
              color: Colors.greenAccent,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.card_travel,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 4.0,
                    ),
                    Text(
                      "ADD TO BAG",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}