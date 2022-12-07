import 'package:flutter/material.dart';
import '../model/data.dart';

class ListShop extends StatelessWidget {
  const ListShop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: dataShoes.length,
      itemBuilder: (context, index) {
        final Shoes data = dataShoes[index];
        return InkWell(
          child: Card(
            child: Column(
              children: [
                Image(
                  image: AssetImage(data.image),
                  width: 240,
                  height: 160,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(data.name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(
                  height: 5,
                ),
                Text(
                  data.price,
                  style: TextStyle(
                      color: Colors.amber[800],
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(data.serie),
              ],
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DetailShoes(),
                settings: RouteSettings(
                  arguments: dataShoes[index],
                ),
              ),
            );
          },
        );
      },
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
    );
  }
}

class DetailShoes extends StatelessWidget {
  const DetailShoes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final shoe = ModalRoute.of(context)!.settings.arguments as Shoes;
    return Scaffold(
      appBar: AppBar(
        title: Text(shoe.name),
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: [
          Image(
            image: AssetImage(shoe.image),
            height: 400,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(shoe.name,
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                SizedBox(height: 10),
                Text(
                  shoe.price,
                  style: TextStyle(
                      color: Colors.amber[800],
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(shoe.serie),
              ],
            ),
          ),
        ],
      ),
    );
    ;
  }
}
