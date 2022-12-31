import 'package:auth_app/src/actions/index.dart';
import 'package:auth_app/src/models/index.dart';
import 'package:auth_app/src/presentation/containers/all_dangers_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return AllDangersContainer(
      builder: (BuildContext context, List<Danger> alldangers) {
        final int solved = alldangers.where((Danger danger) => danger.status == 'solved').length;
        return Scaffold(
          appBar: AppBar(
            title: const Center(
              child: Text(
                'City Dangers Alert Dashboard',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          body: RefreshIndicator(
            color: Colors.white,
            strokeWidth: 3,
            onRefresh: () async {
              await StoreProvider.of<AppState>(context).dispatch(const GetAllDangers());
            },
            child: ColoredBox(
              color: const Color.fromRGBO(30, 24, 73, 1),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Card(
                      color: Colors.transparent,
                      elevation: 20,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: const BorderSide(
                          color: Colors.white,
                          width: 2,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                const Text(
                                  'Dangers submitted: ',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  '${alldangers.length}',
                                  style: const TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                const Text(
                                  'Dangers solved: ',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  '$solved',
                                  style: const TextStyle(
                                    fontSize: 20,
                                    color: Colors.green,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                const Text(
                                  'Dangers to be solved: ',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  '${alldangers.length - solved}',
                                  style: const TextStyle(
                                    fontSize: 20,
                                    color: Colors.yellow,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Expanded(
                    child: ListView.builder(
                      itemCount: alldangers.length,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Card(
                              color: Colors.transparent,
                              elevation: 20,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                                side: const BorderSide(
                                  color: Colors.white,
                                  width: 2,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Row(
                                  children: <Widget>[
                                    const SizedBox(width: 10),
                                    Center(
                                      child: ClipOval(
                                        child: Image.asset(
                                          'assets/images/${alldangers[index].type.split(' ').first}.jpg',
                                          width: 60,
                                          height: 60,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 20),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            const Text(
                                              'Type: ',
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white,
                                              ),
                                            ),
                                            Text(
                                              alldangers[index].type,
                                              style: const TextStyle(
                                                fontSize: 17,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 10),
                                        Row(
                                          children: <Widget>[
                                            const Text(
                                              'Latitude: ',
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white,
                                              ),
                                            ),
                                            Text(
                                              alldangers[index].latitude.substring(0, 12),
                                              style: const TextStyle(
                                                fontSize: 17,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 10),
                                        Row(
                                          children: <Widget>[
                                            const Text(
                                              'Longitude: ',
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white,
                                              ),
                                            ),
                                            Text(
                                              alldangers[index].longitude.substring(0, 12),
                                              style: const TextStyle(
                                                fontSize: 17,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 10),
                                        Row(
                                          children: <Widget>[
                                            const Text(
                                              'Status: ',
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white,
                                              ),
                                            ),
                                            Text(
                                              alldangers[index].status,
                                              style: TextStyle(
                                                fontSize: 17,
                                                color: alldangers[index].status == 'submitted'
                                                    ? Colors.yellow
                                                    : Colors.green,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 10),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          onTap: () {
                            showDialog<String>(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                title: Center(
                                  child: Text(
                                    alldangers[index].type,
                                    style: const TextStyle(fontSize: 25),
                                  ),
                                ),
                                content: const Text(
                                  'Mark it as solved?',
                                  textAlign: TextAlign.center,
                                ),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () async {
                                      final Map<String, String> details = <String, String>{
                                        'latitude': alldangers[index].latitude,
                                        'longitude': alldangers[index].longitude
                                      };
                                      StoreProvider.of<AppState>(context).dispatch(UpdateDanger(details));
                                      StoreProvider.of<AppState>(context).dispatch(const GetAllDangers());
                                      Navigator.pop(context, 'Mark as Solved');
                                    },
                                    child: const Text('Mark as Solved'),
                                  ),
                                  TextButton(
                                    onPressed: () async {
                                      final Map<String, String> deleteDetails = <String, String>{
                                        'uid': alldangers[index].uid,
                                        'latitude': alldangers[index].latitude,
                                        'longitude': alldangers[index].longitude
                                      };
                                      StoreProvider.of<AppState>(context).dispatch(DeleteDanger(deleteDetails));
                                      StoreProvider.of<AppState>(context).dispatch(const GetAllDangers());
                                      Navigator.pop(context, 'Delete');
                                    },
                                    child: const Text('Delete'),
                                  ),
                                  TextButton(
                                    onPressed: () => Navigator.pop(context, 'Cancel'),
                                    child: const Text('Cancel'),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
