// main.dart

import 'package:flutter/material.dart';
import 'package:welcome/pages/drawer.dart';

import 'jsonclass.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String, dynamic>> _allUsers = usersList();

  // This list holds the data for the list view
  List<Map<String, dynamic>> _foundUsers = [];
  @override
  initState() {
    _foundUsers = _allUsers;
    super.initState();
  }

  // This function is called whenever the text field changes
  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = _allUsers;
    } else {
      results = _allUsers
          .where((user) =>
              user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }
    setState(() {
      _foundUsers = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color.fromARGB(255, 240, 233, 248),
      drawer: const DrawerPage(),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text('Wollo University',
            style: TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromARGB(255, 114, 90, 208),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            TextField(
              onChanged: (value) => _runFilter(value),
              decoration: InputDecoration(
                labelStyle: const TextStyle(
                  color: Color.fromARGB(255, 114, 90, 208),
                ),
                labelText: 'Search',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14.0),
                  borderSide: const BorderSide(
                    color: Color.fromARGB(255, 114, 90, 208),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14.0),
                  borderSide: const BorderSide(
                    color: Color.fromARGB(255, 114, 90, 208),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14.0),
                  borderSide: const BorderSide(
                    color: Color.fromARGB(255, 114, 90, 208),
                  ),
                ),
                prefixIcon: const Icon(
                  Icons.search,
                  color: Color.fromARGB(255, 114, 90, 208),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'KIOT Students List',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: _foundUsers.isNotEmpty
                  ? ListView.builder(
                      itemCount: _foundUsers.length,
                      itemBuilder: (context, index) {
                        final userName = _foundUsers[index]['name'];
                        final userId = _foundUsers[index]['id'];
                        final dorm = _foundUsers[index]['dorm'];
                        final block = _foundUsers[index]['block'];
                        final bd = 'Block : ' '$block' ' | ' 'Dorm : ' '$dorm';
                        return Card(
                          key: ValueKey(_foundUsers[index]["id"]),
                          // color: Color.fromARGB(255, 240, 236, 236),
                          elevation: 1,
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          child: ListTile(
                            // leading: Text(
                            //   _foundUsers[index]["no"].toString(),
                            //   style: const TextStyle(
                            //       // fontSize: 24, color: Colors.white
                            //       ),
                            // ),
                            title: Text(userId,
                                style: const TextStyle(
                                    // color: Colors.white,
                                    fontSize: 16)),
                            subtitle: Text(userName,
                                style: const TextStyle(
                                    // color: Colors.white,
                                    fontSize: 16)),
                            // subtitle: Text(
                            //     '${_foundUsers[index]["age"].toString()} years old',
                            //     style: const TextStyle(color: Colors.white)),

                            trailing: Text(bd,
                                style: const TextStyle(
                                    // color: Colors.white,
                                    fontSize: 16)),
                          ),
                        );
                      })
                  : const Text(
                      'No results found',
                      style: TextStyle(color: Colors.grey, fontSize: 24),
                    ),
            ),
          ],
        ),
      ),
      
    );
  }
}
