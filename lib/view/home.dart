import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            width: 700,
            height: 80,
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Row(
              children: [
                SizedBox(width: 10),
                Text(
                  'Halo Rizal',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                SizedBox(width: 180),
                Text(
                  'Rp. 100.000,-',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Text(
            "Choose your style...",
            style: TextStyle(
                color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              InkWell(
                child: Card(
                  child: Column(
                    children: [
                      Image(
                        image: AssetImage('images/image1.webp'),
                        width: 240,
                        height: 160,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Nike Jordan 1',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          )),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Rp. 199.000",
                        style: TextStyle(
                            color: Colors.amber[800],
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("N-123"),
                    ],
                  ),
                ),
                // onTap: () {
                //   Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => const DetailShoes(),
                //       settings: RouteSettings(
                //         arguments: dataShoes[index],
                //       ),
                //     ),
                //   );
                // },
              ),
              InkWell(
                child: Card(
                  child: Column(
                    children: [
                      Image(
                        image: AssetImage('images/image6.webp'),
                        width: 230,
                        height: 160,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Nike Jordan 6',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          )),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Rp. 199.000",
                        style: TextStyle(
                            color: Colors.amber[800],
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("N-123"),
                    ],
                  ),
                ),
                // onTap: () {
                //   Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => const DetailShoes(),
                //       settings: RouteSettings(
                //         arguments: dataShoes[index],
                //       ),
                //     ),
                //   );
                // },
              )
            ],
          )
        ],
      ),
    );
  }
}
