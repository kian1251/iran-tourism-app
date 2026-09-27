import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:location/location.dart';
import 'package:project2/listviewPages/Hicking.dart';
import 'package:project2/listviewPages/Isfahan.dart';
import 'package:project2/listviewPages/Shiraz_page.dart';
import 'package:project2/pages/ancient_iran/ancient_iran.dart';
import 'package:project2/pages/complex_pages/complex_isfahan.dart';

class MapPage extends StatefulWidget {
  MapPage({
    super.key,
  });

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  LocationData? userLocation;
  final MapController mapController = MapController();

  @override
  void initState() {
    getUserLocation();
    super.initState();
  }

  Future<void> getUserLocation() async {
    Location location = new Location();

    bool _serviceEnabled;
    PermissionStatus _permissionGranted;
    //LocationData _locationData;

    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    userLocation = await location.getLocation();
    mapController.move(
        LatLng(userLocation!.latitude!, userLocation!.longitude!), 16);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(onWillPop: () => _onBackButtononPressed(context),// Its For "Do you want to exit the app" DIALOG (A ,M,ETHOD CREATED AT THE END )
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (userLocation != null) {
              mapController.move(
                  LatLng(userLocation!.latitude!, userLocation!.longitude!), 16);
            }
          },
          child: const Icon(
            Icons.location_searching_rounded,
            color: Colors.blue,
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.blue.withOpacity(0.3),
          toolbarHeight: 40,
          title: const Text(
            'Open street map',
          ),
        ),
        body: FlutterMap(
          mapController: mapController,
          options:  MapOptions(
            initialZoom: 16,
          ),
          children: [
            TileLayer(
              tileDisplay:  TileDisplay.fadeIn(),
              urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            ),
            MarkerLayer(markers: [
              if (userLocation != null)
                Marker(
                    width: 24,
                    height: 24,
                    point:
                    LatLng(userLocation!.latitude!, userLocation!.longitude!),
                    child: const Icon(
                      Icons.location_on,
                      color: Colors.blue,
                    )),
            ]),

            ////////////////////Pictures location/////////////////////////////

            MarkerLayer(markers: [
              Marker(
                  width: 50,
                  height: 50,
                  point: const LatLng(35.812142877902694, 51.4725157393065),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HickingPage()));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(4), // Border width
                        decoration: const BoxDecoration(
                            color: Colors.red, shape: BoxShape.circle),
                        child: ClipOval(
                          child: SizedBox.fromSize(
                              size: const Size.fromRadius(40), // Image radius
                              child: Image.asset(
                                "assets/listviewimages/hickingPICS/Niyavaran-croped.png",
                                fit: BoxFit.cover,
                              )),
                        ),
                      )))
            ]),
            MarkerLayer(markers: [
              Marker(
                  width: 50,
                  height: 50,
                  point: const LatLng(35.7780856310392, 51.41034585464813),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HickingPage()));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(4), // Border width
                        decoration: const BoxDecoration(
                            color: Colors.red, shape: BoxShape.circle),
                        child: ClipOval(
                          child: SizedBox.fromSize(
                              size: const Size.fromRadius(40), // Image radius
                              child: Image.asset(
                                "assets/listviewimages/hickingPICS/Melat-croped.png",
                                fit: BoxFit.cover,
                              )),
                        ),
                      )))
            ]),
            MarkerLayer(markers: [
              Marker(
                  width: 50,
                  height: 50,
                  point: const LatLng(35.81631247240507, 51.424016339306576),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HickingPage()));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(4), // Border width
                        decoration: const BoxDecoration(
                            color: Colors.red, shape: BoxShape.circle),
                        child: ClipOval(
                          child: SizedBox.fromSize(
                              size: const Size.fromRadius(40), // Image radius
                              child: Image.asset(
                                "assets/listviewimages/hickingPICS/Saadabad-croped.png",
                                fit: BoxFit.cover,
                              )),
                        ),
                      )))
            ]),
            MarkerLayer(markers: [
              Marker(
                  width: 50,
                  height: 50,
                  point: const LatLng(35.709275730151774, 51.39570331046749),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HickingPage()));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(4), // Border width
                        decoration: const BoxDecoration(
                            color: Colors.red, shape: BoxShape.circle),
                        child: ClipOval(
                          child: SizedBox.fromSize(
                              size: const Size.fromRadius(40), // Image radius
                              child: Image.asset(
                                "assets/listviewimages/hickingPICS/Parklaleh-croped.png",
                                fit: BoxFit.cover,
                              )),
                        ),
                      )))
            ]),
            MarkerLayer(markers: [
              Marker(
                  width: 50,
                  height: 50,
                  point: const LatLng(35.74577496315618, 51.21285432412003),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HickingPage()));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(4), // Border width
                        decoration: const BoxDecoration(
                            color: Colors.red, shape: BoxShape.circle),
                        child: ClipOval(
                          child: SizedBox.fromSize(
                              size: const Size.fromRadius(40), // Image radius
                              child: Image.asset(
                                "assets/listviewimages/hickingPICS/Chitgar-croped.png",
                                fit: BoxFit.cover,
                              )),
                        ),
                      )))
            ]),
            MarkerLayer(markers: [
              Marker(
                  width: 50,
                  height: 50,
                  point: const LatLng(32.6578278948777, 51.67747929873186),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const IsfahanPage()));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(4), // Border width
                        decoration: const BoxDecoration(
                            color: Colors.green, shape: BoxShape.circle),
                        child: ClipOval(
                          child: SizedBox.fromSize(
                              size: const Size.fromRadius(40), // Image radius
                              child: Image.asset(
                                "assets/listviewimages/IsfahanPICS/Naghsh-croped.png",
                                fit: BoxFit.cover,
                              )),
                        ),
                      )))
            ]),
            MarkerLayer(markers: [
              Marker(
                  width: 50,
                  height: 50,
                  point: const LatLng(32.635157593612355, 51.655727668045955),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const IsfahanPage()));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(4), // Border width
                        decoration: const BoxDecoration(
                            color: Colors.green, shape: BoxShape.circle),
                        child: ClipOval(
                          child: SizedBox.fromSize(
                              size: const Size.fromRadius(40), // Image radius
                              child: Image.asset(
                                "assets/listviewimages/IsfahanPICS/church-croped.png",
                                fit: BoxFit.cover,
                              )),
                        ),
                      )))
            ]),
            MarkerLayer(markers: [
              Marker(
                  width: 50,
                  height: 50,
                  point: const LatLng(32.63696366550148, 51.68331521037489),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const IsfahanPage()));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(4), // Border width
                        decoration: const BoxDecoration(
                            color: Colors.green, shape: BoxShape.circle),
                        child: ClipOval(
                          child: SizedBox.fromSize(
                              size: const Size.fromRadius(40), // Image radius
                              child: Image.asset(
                                "assets/listviewimages/IsfahanPICS/Khajoo-croped.png",
                                fit: BoxFit.cover,
                              )),
                        ),
                      )))
            ]),
            MarkerLayer(markers: [
              Marker(
                  width: 50,
                  height: 50,
                  point: const LatLng(32.65740406663651, 51.671701939211026),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const IsfahanPage()));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(4), // Border width
                        decoration: const BoxDecoration(
                            color: Colors.green, shape: BoxShape.circle),
                        child: ClipOval(
                          child: SizedBox.fromSize(
                              size: const Size.fromRadius(40), // Image radius
                              child: Image.asset(
                                "assets/listviewimages/IsfahanPICS/sooton-croped.png",
                                fit: BoxFit.cover,
                              )),
                        ),
                      )))
            ]),
            MarkerLayer(markers: [
              Marker(
                  width: 50,
                  height: 50,
                  point: const LatLng(32.661530658629744, 51.67579174106059),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const IsfahanPage()));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(4), // Border width
                        decoration: const BoxDecoration(
                            color: Colors.green, shape: BoxShape.circle),
                        child: ClipOval(
                          child: SizedBox.fromSize(
                              size: const Size.fromRadius(40), // Image radius
                              child: Image.asset(
                                "assets/listviewimages/IsfahanPICS/Gheysarie-croped.png",
                                fit: BoxFit.cover,
                              )),
                        ),
                      )))
            ]),
            MarkerLayer(markers: [
              Marker(
                  width: 50,
                  height: 50,
                  point: const LatLng(32.64459042050056, 51.667445239210515),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const IsfahanPage()));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(4), // Border width
                        decoration: const BoxDecoration(
                            color: Colors.green, shape: BoxShape.circle),
                        child: ClipOval(
                          child: SizedBox.fromSize(
                              size: const Size.fromRadius(40), // Image radius
                              child: Image.asset(
                                "assets/listviewimages/IsfahanPICS/sio3pool-croped.png",
                                fit: BoxFit.cover,
                              )),
                        ),
                      )))
            ]),
            MarkerLayer(markers: [
              Marker(
                  width: 50,
                  height: 50,
                  point: const LatLng(32.65720526350623, 51.67662673921097),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ComplexIsfahan()));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(4), // Border width
                        decoration: const BoxDecoration(
                            color: Colors.green, shape: BoxShape.circle),
                        child: ClipOval(
                          child: SizedBox.fromSize(
                              size: const Size.fromRadius(40), // Image radius
                              child: Image.asset(
                                "assets/listviewimages/Complex/Alighapoo-croped.png",
                                fit: BoxFit.cover,
                              )),
                        ),
                      )))
            ]),
            MarkerLayer(markers: [
              Marker(
                  width: 50,
                  height: 50,
                  point: const LatLng(32.65752319567028, 51.678685712224926),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ComplexIsfahan()));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(4), // Border width
                        decoration: const BoxDecoration(
                            color: Colors.green, shape: BoxShape.circle),
                        child: ClipOval(
                          child: SizedBox.fromSize(
                              size: const Size.fromRadius(40), // Image radius
                              child: Image.asset(
                                "assets/listviewimages/Complex/Lotf-croped.png",
                                fit: BoxFit.cover,
                              )),
                        ),
                      )))
            ]),
            MarkerLayer(markers: [
              Marker(
                  width: 50,
                  height: 50,
                  point: const LatLng(32.65536513094003, 51.67806040884131),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ComplexIsfahan()));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(4), // Border width
                        decoration: const BoxDecoration(
                            color: Colors.green, shape: BoxShape.circle),
                        child: ClipOval(
                          child: SizedBox.fromSize(
                              size: const Size.fromRadius(40), // Image radius
                              child: Image.asset(
                                "assets/listviewimages/Complex/emam-croped.png",
                                fit: BoxFit.cover,
                              )),
                        ),
                      )))
            ]),
            MarkerLayer(markers: [
              Marker(
                  width: 50,
                  height: 50,
                  point: const LatLng(29.63620018302451, 52.52537471029245),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ShirazPage()));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(4), // Border width
                        decoration: const BoxDecoration(
                            color: Colors.orange, shape: BoxShape.circle),
                        child: ClipOval(
                          child: SizedBox.fromSize(
                              size: const Size.fromRadius(40), // Image radius
                              child: Image.asset(
                                "assets/listviewimages/shiraz/eram-croped.png",
                                fit: BoxFit.cover,
                              )),
                        ),
                      )))
            ]),
            MarkerLayer(markers: [
              Marker(
                  width: 50,
                  height: 50,
                  point: const LatLng(29.62595782179824, 52.558505925634854),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ShirazPage()));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(4), // Border width
                        decoration: const BoxDecoration(
                            color: Colors.orange, shape: BoxShape.circle),
                        child: ClipOval(
                          child: SizedBox.fromSize(
                              size: const Size.fromRadius(40), // Image radius
                              child: Image.asset(
                                "assets/listviewimages/shiraz/hafez-croped.png",
                                fit: BoxFit.cover,
                              )),
                        ),
                      )))
            ]),
            MarkerLayer(markers: [
              Marker(
                  width: 50,
                  height: 50,
                  point: const LatLng(29.62266751606174, 52.58312566404708),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ShirazPage()));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(4), // Border width
                        decoration: const BoxDecoration(
                            color: Colors.orange, shape: BoxShape.circle),
                        child: ClipOval(
                          child: SizedBox.fromSize(
                              size: const Size.fromRadius(40), // Image radius
                              child: Image.asset(
                                "assets/listviewimages/shiraz/saadieh-croped.png",
                                fit: BoxFit.cover,
                              )),
                        ),
                      )))
            ]),
            MarkerLayer(markers: [
              Marker(
                  width: 50,
                  height: 50,
                  point: const LatLng(29.608830711084597, 52.54857735631962),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ShirazPage()));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(4), // Border width
                        decoration: const BoxDecoration(
                            color: Colors.orange, shape: BoxShape.circle),
                        child: ClipOval(
                          child: SizedBox.fromSize(
                              size: const Size.fromRadius(40), // Image radius
                              child: Image.asset(
                                "assets/listviewimages/shiraz/nasir-croped.png",
                                fit: BoxFit.cover,
                              )),
                        ),
                      )))
            ]),
            MarkerLayer(markers: [
              Marker(
                  width: 50,
                  height: 50,
                  point: const LatLng(29.614971911791063, 52.54526375447023),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ShirazPage()));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(4), // Border width
                        decoration: const BoxDecoration(
                            color: Colors.orange, shape: BoxShape.circle),
                        child: ClipOval(
                          child: SizedBox.fromSize(
                              size: const Size.fromRadius(40), // Image radius
                              child: Image.asset(
                                "assets/listviewimages/shiraz/HamamVakil-croped.png",
                                fit: BoxFit.cover,
                              )),
                        ),
                      )))
            ]),
            MarkerLayer(markers: [
              Marker(
                  width: 50,
                  height: 50,
                  point: const LatLng(32.00916364597708, 48.521589854535115),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AncientIran()));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(4), // Border width
                        decoration: const BoxDecoration(
                            color: Colors.brown, shape: BoxShape.circle),
                        child: ClipOval(
                          child: SizedBox.fromSize(
                              size: const Size.fromRadius(40), // Image radius
                              child: Image.asset(
                                "assets/listviewimages/ancient/zigorat-croped.png",
                                fit: BoxFit.cover,
                              )),
                        ),
                      )))
            ]),
            MarkerLayer(markers: [
              Marker(
                  width: 50,
                  height: 50,
                  point: const LatLng(29.936129035513723, 52.88775644266143),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AncientIran()));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(4), // Border width
                        decoration: const BoxDecoration(
                            color: Colors.brown, shape: BoxShape.circle),
                        child: ClipOval(
                          child: SizedBox.fromSize(
                              size: const Size.fromRadius(40), // Image radius
                              child: Image.asset(
                                "assets/listviewimages/ancient/Takht-croped.png",
                                fit: BoxFit.cover,
                              )),
                        ),
                      )))
            ]),
            MarkerLayer(markers: [
              Marker(
                  width: 50,
                  height: 50,
                  point: const LatLng(36.604805389373844, 47.23479553933194),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AncientIran()));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(4), // Border width
                        decoration: const BoxDecoration(
                            color: Colors.brown, shape: BoxShape.circle),
                        child: ClipOval(
                          child: SizedBox.fromSize(
                              size: const Size.fromRadius(40), // Image radius
                              child: Image.asset(
                                "assets/listviewimages/ancient/Soleyman-croped.png",
                                fit: BoxFit.cover,
                              )),
                        ),
                      )))
            ]),
            MarkerLayer(markers: [
              Marker(
                  width: 50,
                  height: 50,
                  point: const LatLng(30.194215375537585, 53.16718290043225),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AncientIran()));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(4), // Border width
                        decoration: const BoxDecoration(
                            color: Colors.brown, shape: BoxShape.circle),
                        child: ClipOval(
                          child: SizedBox.fromSize(
                              size: const Size.fromRadius(40), // Image radius
                              child: Image.asset(
                                "assets/listviewimages/ancient/Korosh-croped.png",
                                fit: BoxFit.cover,
                              )),
                        ),
                      )))
            ]),
            MarkerLayer(markers: [
              Marker(
                  width: 50,
                  height: 50,
                  point: const LatLng(32.04440564337019, 48.8582782124804),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AncientIran()));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(4), // Border width
                        decoration: const BoxDecoration(
                            color: Colors.brown, shape: BoxShape.circle),
                        child: ClipOval(
                          child: SizedBox.fromSize(
                              size: const Size.fromRadius(40), // Image radius
                              child: Image.asset(
                                "assets/listviewimages/ancient/Shooshtar-croped.png",
                                fit: BoxFit.cover,
                              )),
                        ),
                      )))
            ]),
            MarkerLayer(markers: [
              Marker(
                  width: 50,
                  height: 50,
                  point: const LatLng(30.650811329824947, 61.39965662764126),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AncientIran()));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(4), // Border width
                        decoration: const BoxDecoration(
                            color: Colors.brown, shape: BoxShape.circle),
                        child: ClipOval(
                          child: SizedBox.fromSize(
                              size: const Size.fromRadius(40), // Image radius
                              child: Image.asset(
                                "assets/listviewimages/ancient/Sokhte-croped.png",
                                fit: BoxFit.cover,
                              )),
                        ),
                      )))
            ]),
          ],
        ),
      ),
    );
  }

  // Its For "Do you want to exit the app" DIALOG (A ,M,ETHOD CREATED AT THE END )
  Future<bool> _onBackButtononPressed(BuildContext context) async {
    bool exitApp = await showDialog(
        context: context, builder: (BuildContext context) {
      return AlertDialog(
        title: const Text("Exit App"), content: const Text("Do you want to exit the App?"), actions: [
        TextButton(
          onPressed:() {Navigator.of(context).pop(false);}, child: const Text("No"), ),
        TextButton(
            onPressed:() {Navigator.of(context).pop(true);}, child: const Text("Yes")),
      ],);
    }

    );
    return exitApp?? false;
  }
}
