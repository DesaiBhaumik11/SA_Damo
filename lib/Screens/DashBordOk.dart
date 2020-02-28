import 'package:flutter/material.dart';

class DashBordOk extends StatefulWidget {
  @override
  _DashBordOkState createState() => _DashBordOkState();
}

class _DashBordOkState extends State<DashBordOk> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        actions: <Widget>[
          appBar(),
        ],
      ),
      body: _buildProductDetailsPage(context),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 2,
          currentIndex: 2, // this will be set when a new tab is tapped
          items: [
            BottomNavigationBarItem(icon: IconButton(icon: Icon(Icons.supervised_user_circle)), title: Text('Players'),backgroundColor: Colors.red),
            BottomNavigationBarItem(icon: Icon(Icons.whatshot), title: Text('Trending'),backgroundColor: Colors.blueAccent),
            BottomNavigationBarItem(icon: Icon(Icons.access_time), title: Text('Highlights'),backgroundColor: Colors.yellow)
          ]
      ),
    );
  }

  Widget appBar() {
    String deliveryAddress;
    return Expanded(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          IconButton(
            onPressed: () {

            },
            icon: Image.asset(
              "Assets/menuIcon.png",
              scale: 10,
            ),
            color: Colors.orange,
          ),
          Flexible(
            flex: 1,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Flexible(
                        child: Text(
                          'Set Your Location',
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'GoogleSans',
                              color: Colors.green
                          ),
                          textAlign: TextAlign.left,
                        )),
                    Flexible(
                      child:deliveryAddress != null
                          ? Text(
                               deliveryAddress,
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontFamily: 'GoogleSans',
                                  color: Colors.black
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          )
                          :  Row(
                              children: <Widget>[
                                Text(
                                  "No Location Found  ",
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontFamily: 'GoogleSans',
                                      color: Colors.black
                                  ),
                                ),
                                Icon(
                                  Icons.report_problem,
                                  color: Colors.orange,
                                  size: 16,
                                )
                              ],
                            ),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {

                  },
                  icon: Icon(
                    Icons.search,
                    size: 25,
                    color: Colors.orange,
                  ),
                )
              ],
            ),
          ),
          IconButton(
            onPressed: () {

            },
            icon: Image.asset(
              "Assets/supermarket.png",
              scale: 20,
            ),
            color: Colors.orange,
          ),
        ],
      ),
    );
  }


  _buildProductDetailsPage(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return ListView(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.only(top: 5.0),
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


  _buildProductImagesWidgets() {
    TabController imagesController =
    TabController(length: 5, vsync: this);

    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Container(
        height: 150.0,
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


  Widget _buildBottomNavigationBar() {
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
