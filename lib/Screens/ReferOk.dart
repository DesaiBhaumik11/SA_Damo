import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class ReferOk extends StatefulWidget {
  @override
  _ReferOkState createState() => _ReferOkState();
}

class _ReferOkState extends State<ReferOk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GestureDetector(
        onTap: () {

        },
        child: Container(
          margin: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
          height: 40,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  offset: Offset(5, 5),
                  blurRadius: 10,
                )
              ],
              color: Colors.green[700]
          ),
          child: Text(
            'Refer Friends',
            style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.w600),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {

          },
          icon: Image.asset(
            "Assets/LeftSideArrow.png",
            scale: 1.3,
          ),
          color: Colors.orange,
        ),
        title: Text("Refer and Get Discount",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.black
          ),
        ),
      ),

      body: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("Assets/Referokimages.png")
                  )
                ),
              ),
              Text(
                "Refer Ok",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 30,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 15,),
              Container(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(10.0, 0.0, 5.0, 0.0),
                      height: 260,
                      width: 45,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                "Assets/Referprocces.png",
                              ),
                              fit: BoxFit.contain
                          )
                      ),
                    ),
                    Container(
                      height: 260,
                      padding: EdgeInsets.only(top: 32, bottom: 35),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Shere Ok with yor friends',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          Text(
                            'Friends signup using your referral code',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.8,
                            child: Text(
                              'Friends get upto 15% discont on signIn & you get 1 coin when friend\'s frist order gets deliverd',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                            ),
                          ),
                          Text(
                            'Use coins to get free items',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
