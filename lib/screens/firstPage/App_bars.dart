import 'package:flutter/material.dart';

class app_bar extends StatelessWidget {
  const app_bar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(15.0, 20.0, 0.0, 20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // SvgPicture.asset("images/Images.svg")
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 40.0,
                height: 40.0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5.0),
                  child: FittedBox(
                    child: Image(
                      image: AssetImage("images/profile.jpg"),
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              )
            ],
          ),
          // SizedBox(
          //   width: 10.0,
          // ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.only(left: 15.3, bottom: 5.0),
                    child: Row(
                      children: [
                        Text(
                          "My Location",
                          style: TextStyle(
                              color: Color(0x70707070),
                              fontSize: 12.0,
                              fontFamily: 'montserrat',
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 8.7,
                        ),
                        Container(
                          width: 10.0,
                          height: 6.0,
                          child: FittedBox(
                            child: Image.asset("images/location.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                onTap: () {},
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.3, top: 7.0),
                child: Text(
                  "Cos's Bazar, BD",
                  style: TextStyle(
                      fontSize: 12.0,
                      fontFamily: 'montserrat',
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          SizedBox(width: 100),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Image.asset("images/notification.png"),
          ),
          SizedBox(width: 24),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Image.asset("images/Hamburger.png"),
          ),
        ],
      ),
    );
  }
}