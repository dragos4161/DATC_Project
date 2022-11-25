import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:city_dangers_alert/api/remote_services.dart';
import 'package:city_dangers_alert/api/user.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage();

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  UserData? _user;
  var isLoaded = false;
  String name = '';
  final user = FirebaseAuth.instance.currentUser!;

  LatLng? dangerPosition;

  bool created = false;

  @override
  void initState() {
    super.initState();
    getUserName();
  }

  getUserName() async {
    _user = await RemoteServices().getUser(user.uid);
    if (_user != null) {
      setState(() {
        isLoaded = true;
        name = _user!.name;
      });
    }
  }

  final GlobalKey<ScaffoldState> drawerKey = new GlobalKey<ScaffoldState>();
  late GoogleMapController mapController;
  final LatLng _center = const LatLng(45.753467, 21.225594);
  final Set<Marker> markers = new Set();

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  Set<Marker>? getmarkers() {
    setState(() {
      markers.add(
        Marker(
          markerId: MarkerId('initial'),
          position: _center,
        ),
      );
    });
    return markers;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color.fromRGBO(195, 51, 127, 0.5),
          child: Icon(
            Icons.add,
            size: 50,
          ),
          onPressed: () {
            showModalBottomSheet<void>(
              context: context,
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              builder: (BuildContext context) {
                return Container(
                  height: MediaQuery
                      .of(context)
                      .size
                      .height - 120,
                  color: Color.fromRGBO(30, 24, 73, 1),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      //mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          height: 600,
                          child: GridView.builder(
                              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
                              itemCount: 6,
                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2, mainAxisSpacing: 70, crossAxisSpacing: 70),
                              itemBuilder: (BuildContext context, int index) {
                                return GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      if (dangerPosition != null) {
                                        created = true;
                                        markers.add(
                                            Marker(markerId: MarkerId('$dangerPosition'), position: dangerPosition!));
                                        dangerPosition = null;
                                        Navigator.of(context).pop();
                                      } else {
                                        created = false;
                                        Navigator.of(context).pop();
                                        final snack = SnackBar(
                                          behavior: SnackBarBehavior.floating,
                                          margin: EdgeInsets.only(bottom: MediaQuery
                                              .of(context)
                                              .size
                                              .height * 0.5),
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
                                      }
                                    });
                                  },
                                  child: SizedBox(
                                    width: 100,
                                    height: 100,
                                    child: ClipOval(
                                      child: Image.asset(
                                        'assets/images/avatar.jpg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                );
                              }),
                        ),
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(195, 51, 127, 0.5)),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0), side: BorderSide(color: Colors.red))),
                          ),
                          child: const Padding(
                            padding: const EdgeInsets.all(20),
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
                                markers.removeWhere((element) => element.position == dangerPosition );
                                dangerPosition = null;
                              }
                              Navigator.pop(context);
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ),
        key: drawerKey,
        endDrawer: Drawer(
          backgroundColor: Color.fromRGBO(30, 24, 73, 1),
          child: Column(
            children: [
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 50),
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
              SizedBox(
                height: 30,
              ),
              Center(
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
                  name,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: SizedBox(
                  width: 200,
                  height: 50,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(200, 50),
                      backgroundColor: Color.fromRGBO(195, 51, 127, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    icon: Icon(
                      Icons.arrow_forward_rounded,
                      size: 32,
                    ),
                    label: Text(
                      'View Profile',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {
                      FirebaseAuth.instance.signOut();
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(200, 50),
                  backgroundColor: Color.fromRGBO(195, 51, 127, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                icon: Icon(
                  Icons.arrow_back,
                  size: 32,
                ),
                label: Text(
                  'Sign Out',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {
                  FirebaseAuth.instance.signOut();
                },
              ),
            ],
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    'City Dangers Alert',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    child: GestureDetector(
                      onTap: () {
                        drawerKey.currentState!.openEndDrawer();
                      },
                      child: Container(
                        child: ClipOval(
                          child: Image.asset(
                            'assets/images/avatar.jpg',
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: GoogleMap(
                    onMapCreated: _onMapCreated,
                    initialCameraPosition: CameraPosition(
                      target: _center,
                      zoom: 14,
                    ),
                    myLocationButtonEnabled: true,
                    zoomControlsEnabled: false,
                    onTap: (newPos) {
                      setState(() {
                        created = false;
                        markers.add(Marker(markerId: MarkerId('$newPos'), position: newPos));
                        dangerPosition = newPos;
                      });
                    },
                    markers: getmarkers()! //{
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
