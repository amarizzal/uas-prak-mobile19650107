import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../model/data_user.dart';
import '../viewmodel/fetch_user.dart';

class Friends extends StatelessWidget {
  const Friends({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<User>>(
        future: fetchUser(http.Client()),
        builder: (context, snapshot) {
          if (snapshot.hasError) print(snapshot.error);
          if (snapshot.hasData) print(snapshot.data);
          return snapshot.hasData
              ? ListFriends(friends: snapshot.data)
              : const Center(child: CircularProgressIndicator());
        });
    ;
  }
}

class ListFriends extends StatelessWidget {
  final List<User>? friends;

  const ListFriends({Key? key, required this.friends}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
          itemCount: friends?.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(friends![index].last_name),
              subtitle: Text(friends![index].email),
              leading: CircleAvatar(
                child: Image.network(friends![index].avatar),
              ),
              onTap: () {},
            );
          }),
    );
  }
}
