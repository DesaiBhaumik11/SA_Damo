import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AvailableJobs {
  static Future showAvailableJobs(context) {
    return showModalBottomSheet(
        elevation: 5,
        isScrollControlled: true,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))),
        context: context,
        builder: (context) {
          return Container(
            padding: EdgeInsets.only(left: 5, right: 5, top: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20)),
             // color: Colors.amber,
            ),
            height: MediaQuery.of(context).size.height * 0.8,
            child: Stack(
              children: <Widget>[
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: 75,
                      height: 5,
                      margin: EdgeInsets.only(bottom: 5,top: 2),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                        color: Colors.grey[500],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          child: Text(
                            "Available Jobs",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontFamily: "rawline",
                                fontSize: MediaQuery.of(context).textScaleFactor * 18,
                                color: Colors.grey[500]),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Container(
                            margin: EdgeInsets.only(left: 10, right: 10,),
                            child:  TextField(
                              maxLines: 1,
                              textAlignVertical: TextAlignVertical.center,
                              textAlign: TextAlign.start,
                              decoration: InputDecoration(
                                  fillColor: Colors.grey[500],
                                  hintText: "  Eg.101,SA",
                                  hintStyle: TextStyle(
                                      color: Colors.grey[500],
                                      fontSize: MediaQuery.of(context).textScaleFactor*15,
                                    fontFamily: "rawline",
                                  ),
                                  suffixIcon: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.search,
                                      color: Colors.grey[500],
                                       size: MediaQuery.of(context).textScaleFactor*20,
                                    ),
                                  )),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 0,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.tune,
                              color: Colors.grey[500],
                              size: MediaQuery.of(context).textScaleFactor * 25,
                            ),
                          ),
                        )
                      ],
                    ),
                    Flexible(
                      child: ListView.builder(
                        physics: AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics()),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  margin:EdgeInsets.only(top: 5,),
                                  child: Text(
                                    'Today $index'+'/$index',
                                    style: TextStyle(
                                        color: Colors.grey[500],
                                      fontSize: MediaQuery.of(context).textScaleFactor * 15,
                                      fontFamily: "rawline",
                                    ),
                                  ),
                                ),
                                ListView.builder(
                                  shrinkWrap: true,
                                  physics: ClampingScrollPhysics(),
                                  itemBuilder: (context, index) {
                                    return Container(
                                      margin: EdgeInsets.only(top: 10.0,bottom: 10),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Container(
                                            margin: EdgeInsets.all(2),
                                            child: Stack(
                                              alignment: Alignment.centerLeft,
                                              fit: StackFit.loose,
                                              overflow: Overflow.clip,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.only(left: 5),
                                                  padding: EdgeInsets.all(5.0),
                                                  decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(40),
                                                      color: Colors.pink[600]
                                                  ),
                                                  child: Center(
                                                    child: Text("15.00",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontFamily: "rawline",
                                                          fontSize: MediaQuery.of(context).textScaleFactor * 8
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.only(left: 28),
                                                  child: CircleAvatar(
                                                    child: Icon(
                                                      Icons.location_on,
                                                      color: Colors.pink[600],
                                                      size: MediaQuery.of(context).textScaleFactor * 30,
                                                    ),
                                                    backgroundColor: Colors.black12,
                                                  ),
                                                ),
                                              ]
                                            ),
                                          ),
                                          Expanded(
                                            flex: 1,
                                          child: Padding(
                                            padding: const EdgeInsets.only(left:10.0,top: 3,bottom: 3),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: <Widget>[
                                                Text(
                                                  "Full House Move",
                                                  style: TextStyle(
                                                      fontFamily: "rawline",
                                                      fontSize: MediaQuery.of(context).textScaleFactor * 14,
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.grey[900]
                                                  ),
                                                ),
                                                Text(
                                                  "asdsafddfddsafdsa",
                                                  style: TextStyle(
                                                      fontFamily: "rawline",
                                                      fontSize: MediaQuery.of(context).textScaleFactor * 11,
                                                    fontWeight: FontWeight.w300,
                                                    color: Colors.grey[700]
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                          ),
                                          Expanded(
                                            flex: 0,
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              crossAxisAlignment: CrossAxisAlignment.end,
                                              children: <Widget>[
                                                Text(
                                                  "£ " + "30000",
                                                  style: TextStyle(
                                                      fontFamily: "rawline",
                                                      fontSize: MediaQuery.of(context).textScaleFactor * 14,
                                                    color: Colors.grey[900],
                                                    fontWeight: FontWeight.w400
                                                  ),
                                                ),
                                                Container(
                                                  padding: EdgeInsets.only(left:5,right: 5,bottom: 2),
                                                  decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(20),
                                                      color: Colors.blue[600]
                                                  ),
                                                  child: Center(
                                                    child: Text("New",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontFamily: "rawline",
                                                          fontSize: MediaQuery.of(context).textScaleFactor * 8
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                  itemCount: 4, // this is a hardcoded value
                                ),
                              ],
                            ),
                          );
                        },
                        itemCount: 5, // this is a hardcoded value
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FloatingActionButton(
                      elevation: 3,
                      onPressed: (){

                      },
                      child: Icon(Icons.gps_fixed),
                    ),
                  ),
                )
              ],
            ),
          );
        });
  }
}

