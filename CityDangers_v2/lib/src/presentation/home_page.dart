import 'package:auth_app/src/actions/index.dart';
import 'package:auth_app/src/models/index.dart';
import 'package:auth_app/src/presentation/containers/all_dangers_container.dart';
import 'package:auth_app/src/presentation/containers/user_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> drawerKey = GlobalKey<ScaffoldState>();
  bool created = false;
  static const LatLng center = LatLng(45.753467, 21.225594);
  LatLng? dangerPosition;
  List<String> categories = <String>[
    'pothole',
    'overturned trash can',
    'destroyed bench',
    'dangerous building',
    'broken traffic light',
    'missing sign'
  ];
  Set<Marker> markers = <Marker>{};

  void getMarkers(List<Danger> dangers) {
    setState(() {
      markers = <Marker>{};
      if (dangers.isNotEmpty) {
        for (final Danger danger in dangers) {
          markers.add(
            Marker(
              markerId: MarkerId(danger.latitude + danger.longitude),
              position: LatLng(double.parse(danger.latitude), double.parse(danger.longitude)),
              infoWindow: InfoWindow(title: danger.type),
            ),
          );
        }
      } else {
        markers.add(
          const Marker(
            markerId: MarkerId('initial'),
            position: center,
            infoWindow: InfoWindow(title: 'Initial Position'),
          ),
        );
      }
    });
  }

  late GoogleMapController mapController;

  void _onResponse(dynamic action) {
    if (action is GetUserDangersSuccessful) {
      Navigator.of(context).pushNamed('/profile');
    }
  }

  void _onResponseMarkers(dynamic action) {
    if (action is InitializeMarkersSuccessful) {
      getMarkers(StoreProvider.of<AppState>(context).state.dangers.allDangers);
    }
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    StoreProvider.of<AppState>(context).dispatch(InitializeMarkers(response: _onResponseMarkers));
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return AllDangersContainer(
      builder: (BuildContext context, List<Danger> alldangers) {
        return UserContainer(
          builder: (BuildContext context, AppUser? user) {
            return SafeArea(
              child: Scaffold(
                floatingActionButton: FloatingActionButton(
                  backgroundColor: const Color.fromRGBO(195, 51, 127, 0.5),
                  child: const Icon(
                    Icons.add,
                    size: 50,
                  ),
                  onPressed: () {
                    showModalBottomSheet<void>(
                      context: context,
                      isScrollControlled: true,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                      ),
                      builder: (BuildContext context) {
                        return SafeArea(
                          child: Container(
                            height: MediaQuery.of(context).size.height - 120,
                            color: const Color.fromRGBO(30, 24, 73, 1),
                            child: Center(
                              child: Column(
                                children: <Widget>[
                                  SizedBox(
                                    height: 500,
                                    child: GridView.builder(
                                      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 35),
                                      itemCount: 6,
                                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2,
                                        mainAxisSpacing: 20,
                                        crossAxisSpacing: 20,
                                      ),
                                      itemBuilder: (BuildContext context, int index) {

                                        return GestureDetector(
                                          onTap: () async {
                                            if (dangerPosition != null) {
                                              final Map<String, Object> dangerData = <String, Object>{
                                                'id': user!.uid,
                                                'type': categories[index],
                                                'latitude': dangerPosition!.latitude,
                                                'longitude': dangerPosition!.longitude,
                                                'status': 'submitted'
                                              };
                                              created = true;
                                              setState(() {
                                                markers.add(
                                                  Marker(
                                                    markerId: MarkerId('$dangerPosition'),
                                                    position: dangerPosition!,
                                                    infoWindow: InfoWindow(title: categories[index]),
                                                  ),
                                                );
                                              });
                                              await StoreProvider.of<AppState>(context)
                                                  .dispatch(PostDanger(dangerData));
                                              dangerPosition = null;
                                              // ignore: use_build_context_synchronously
                                              Navigator.of(context).pop();
                                            } else {
                                              created = false;
                                              const SnackBar snack = SnackBar(
                                                behavior: SnackBarBehavior.floating,
                                                backgroundColor: Color.fromRGBO(195, 51, 127, 0.5),
                                                content: Text(
                                                  'Choose a place on the map.',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontSize: 24,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              );
                                              ScaffoldMessenger.of(context).showSnackBar(snack);
                                              Navigator.of(context).pop();
                                            }
                                          },
                                          child: Column(
                                            children: <Widget>[
                                              SizedBox(
                                                width: 100,
                                                height: 100,
                                                child: ClipOval(
                                                  child: Image.asset(
                                                    'assets/images/${categories[index].split(' ').first}.jpg',
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(height: 10),
                                              Center(
                                                child: Text(
                                                  categories[index],
                                                  style: const TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                  ),
                                                  maxLines: 1,
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(const Color.fromRGBO(195, 51, 127, 0.5)),
                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(18),
                                          side: const BorderSide(color: Colors.red),
                                        ),
                                      ),
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.all(20),
                                      child: Text(
                                        'CLOSE',
                                        style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        if (created == false) {
                                          markers.removeWhere((Marker element) => element.position == dangerPosition);
                                          dangerPosition = null;
                                        }
                                        Navigator.pop(context);
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
                key: drawerKey,
                endDrawer: Drawer(
                  backgroundColor: const Color.fromRGBO(30, 24, 73, 1),
                  child: Column(
                    children: <Widget>[
                      Center(
                        child: Container(
                          margin: const EdgeInsets.only(top: 50),
                          child: ClipOval(
                            child: Image.asset(
                              'assets/images/avatar.jpg',
                              width: 150,
                              height: 150,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Center(
                        child: Text(
                          'Good to see you,',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          user!.displayName,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Center(
                        child: SizedBox(
                          width: 200,
                          height: 50,
                          child: ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              minimumSize: const Size(200, 50),
                              backgroundColor: const Color.fromRGBO(195, 51, 127, 1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            icon: const Icon(
                              Icons.arrow_forward_rounded,
                              size: 32,
                            ),
                            label: const Text(
                              'View Profile',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onPressed: () {
                              StoreProvider.of<AppState>(context)
                                  .dispatch(GetUserDangers(uid: user.uid, response: _onResponse));
                            },
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(200, 50),
                          backgroundColor: const Color.fromRGBO(195, 51, 127, 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        icon: const Icon(
                          Icons.arrow_back,
                          size: 32,
                        ),
                        label: const Text(
                          'Sign Out',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {
                          StoreProvider.of<AppState>(context).dispatch(const Logout());
                        },
                      ),
                    ],
                  ),
                ),
                body: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          const Text(
                            'City Dangers Alert',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              drawerKey.currentState!.openEndDrawer();
                            },
                            child: ClipOval(
                              child: Image.asset(
                                'assets/images/avatar.jpg',
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height - 120,
                      child: Stack(
                        children: <Widget>[
                          GoogleMap(
                            //onMapCreated: onMapCreated,
                            onMapCreated: (GoogleMapController controller) {
                              mapController = controller;
                            },
                            initialCameraPosition: const CameraPosition(
                              target: center,
                              zoom: 14,
                            ),
                            zoomControlsEnabled: false,
                            onTap: (LatLng newPos) {
                              setState(() {
                                created = false;
                                markers.add(
                                  Marker(
                                    markerId: MarkerId('$newPos'),
                                    position: newPos,
                                    draggable: true,
                                  ),
                                );
                                dangerPosition = newPos;
                              });
                            },
                            markers: markers,
                          ),
                          IconButton(
                            onPressed: () async {
                              await StoreProvider.of<AppState>(context)
                                  .dispatch(InitializeMarkers(response: _onResponseMarkers));
                            },
                            icon: const Icon(
                              Icons.refresh,
                              size: 45,
                            ),
                          ),
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
