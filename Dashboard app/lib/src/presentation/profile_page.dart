import 'package:auth_app/src/models/index.dart';
import 'package:auth_app/src/presentation/containers/dangers_container.dart';
import 'package:auth_app/src/presentation/containers/user_container.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  static const List<String> categories = <String>[
    'groapa carosabil',
    'cos gunoi rasturnat',
    'banca distrusa',
    'fatada in lucru',
    'semafor stricat',
    'semn lipsa'
  ];

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return DangersContainer(
      builder: (BuildContext context, List<Danger> dangers) {
        final int solved = dangers.where((Danger danger) => danger.status == 'solved').length;
        final int points = solved * 20;
        return UserContainer(
          builder: (BuildContext context, AppUser? user) {
            return Scaffold(
              backgroundColor: const Color.fromRGBO(30, 24, 73, 1),
              body: Padding(
                padding: const EdgeInsets.fromLTRB(25, 60, 25, 0),
                child: Column(
                  children: <Widget>[
                    Center(
                      child: SizedBox(
                        width: 350,
                        height: 280,
                        child: Stack(
                          children: <Widget>[
                            Center(
                              child: Container(
                                height: 180,
                                width: 350,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(40),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(bottom: 170),
                              child: Center(
                                child: ClipOval(
                                  child: Image.asset(
                                    'assets/images/avatar.jpg',
                                    width: 120,
                                    height: 120,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 120),
                              child: Column(
                                children: <Widget>[
                                  Center(
                                    child: Text(
                                      user!.displayName,
                                      style: const TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: Text(
                                      '$points points.',
                                      style: const TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 13, right: 13),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Column(
                                          children: <Widget>[
                                            const Center(
                                              child: Text(
                                                'Dangers submitted',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 17,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(height: 5),
                                            Center(
                                              child: Text(
                                                '${dangers.length}',
                                                style: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        const Text(
                                          '|',
                                          style: TextStyle(
                                            fontSize: 40,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Column(
                                          children: <Widget>[
                                            const Center(
                                              child: Text(
                                                'Dangers solved',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 17,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(height: 5),
                                            Center(
                                              child: Text(
                                                '$solved',
                                                style: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 50, right: 50),
                      child: Text(
                        'Dangers submitted',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 2, left: 20, right: 20, bottom: 20),
                      child: Divider(
                        height: 0.3,
                        thickness: 1,
                        color: Colors.white,
                        indent: 30,
                        endIndent: 30,
                      ),
                    ),
                    Expanded(
                      child: Stack(
                        children: <Widget>[
                          Container(
                            width: 350,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                              border: Border.all(
                                color: Colors.white,
                                width: 2,
                              ),
                            ),
                          ),
                          ListView.builder(
                            padding: const EdgeInsets.all(20),
                            itemCount: dangers.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: const EdgeInsets.only(bottom: 40),
                                child: Container(
                                  height: 150,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 2,
                                    ),
                                  ),
                                  child: Center(
                                    child: Row(
                                      children: <Widget>[
                                        Container(
                                          padding: const EdgeInsets.only(left: 10),
                                          child: ClipOval(
                                            child: Image.asset(
                                              'assets/images/avatar.jpg',
                                              width: 60,
                                              height: 60,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              'Latitude:${dangers[index].latitude.substring(0, 10)}',
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 15,
                                            ),
                                            Text(
                                              'Longitude:${dangers[index].longitude.substring(0, 10)}',
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 15,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                const Text(
                                                  'Status: ',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                Text(
                                                  dangers[index].status,
                                                  style: TextStyle(
                                                    color: dangers[index].status == 'submitted'
                                                        ? Colors.yellow
                                                        : Colors.green,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
