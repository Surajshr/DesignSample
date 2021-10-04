import 'package:flutter/material.dart';

class serchBar extends StatefulWidget {
  const serchBar({
    Key? key,
  }) : super(key: key);

  @override
  _serchBarState createState() => _serchBarState();
}

class _serchBarState extends State<serchBar> {
  String? vehicleChose;
  var listItem = ["Truck", "Mini Truck", "Tractor", "Others"];

  // String? dropdownValue;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 5,
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xEAE8E8E8),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              children: [
                Container(
                  child: Image.asset("images/search.png"),
                  margin: EdgeInsets.fromLTRB(21, 19, 21.3, 20),
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search your Hotels",
                        hintStyle: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: 12.0,
                            fontFamily: 'montserrat',
                            color: Color(0x70707070))),
                  ),
                )
              ],
            ),
          ),
        ),
        InkWell(
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Container(
                child: Image(
              image: AssetImage("images/Filter.png"),
            )),
          ),
          onTap: () {
            _onButtonPressed(context);
          },
        )
      ],
    );
  }

  void _onButtonPressed(BuildContext context) {
    showModalBottomSheet(
        enableDrag: true,
        context: context,
        builder: (context) {
          return Container(
            height: MediaQuery.of(context).size.height * .60,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Search your location",
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 20.0),
                            decoration: BoxDecoration(
                              color: Color(0xD0D9D7D7),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(8.0, 4.0, 4.0, 4.0),
                              child: Row(
                                children: [
                                  Container(
                                    child: Icon(Icons.location_pin),
                                    margin: EdgeInsets.fromLTRB(3, 0, 7, 0),
                                  ),
                                  SizedBox(width: 10.0),
                                  dropdownButtonList(),
                                  //Text("$vehicleChose"),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }

  Widget dropdownButtonList() {
    return Container(
      child: DropdownButton(
        items: listItem.map((String valueItem) {
          return DropdownMenuItem(
            value: valueItem,
            child: Text(valueItem),
          );
        }).toList(),
        hint: Text("Select Item"),
        dropdownColor: Colors.white,
        icon: Icon(Icons.arrow_drop_down),
        iconSize: 28.0,
        //isExpanded: true,
        underline: SizedBox(),
        style: TextStyle(color: Colors.black, fontSize: 17),
        value: vehicleChose,
        onChanged: (newValue) {
          //print(newValue.toString());
          setState(() {
            vehicleChose = newValue as String?;
          });
        },
      ),
    );
  }
}
