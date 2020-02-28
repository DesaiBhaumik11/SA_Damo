import 'package:flutter/material.dart';

class AddFilter extends StatefulWidget {
  @override
  _AddFilterState createState() => _AddFilterState();
}

class _AddFilterState extends State<AddFilter> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.only(left: 5, right: 5, top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20)),
        // color: Colors.amber,
      ),
      height: MediaQuery.of(context).size.height * 0.8,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          mainFilterControl(context),
          byProductCheckBox(context),
        ],
      ),
    );
  }
  Widget mainFilterControl(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right:8.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.clear,
              size: 25,
              color: Colors.deepOrange,
            ),
          ),
          Text("Filter",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.deepOrange,
            ),
          ),
          Text("Reset",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.green[800],
            ),
          )
        ],
      ),
    );
  }

  Widget byProductCheckBox(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("By Prodyct",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.black
          ),
        ),
        checkbox("Pulses", pulsesVal),
        checkbox("Cereals", cerealsVal),
        checkbox("Fruits", fruitsVal),
        checkbox("Vegetables", vegetablesVal),

      ],
    );
  }


  bool pulsesVal = false;
  bool cerealsVal = false;
  bool fruitsVal = false;
  bool vegetablesVal = false;

  Widget checkbox(String title, bool boolValue) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Checkbox(
          value: boolValue,
          onChanged: (bool value) {
            /// manage the state of each value
            setState(() {
              switch (title) {
                case "Pulses":
                  pulsesVal = value;
                  break;
                case "Cereals":
                  cerealsVal = value;
                  break;
                case "Fruits":
                  fruitsVal = value;
                  break;
                case "Vegetables":
                  vegetablesVal = value;
                  break;
              }
            });
          },
        ),
        Text(title),
      ],
    );
  }
}
