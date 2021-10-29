// ignore_for_file: prefer_final_fields, constant_identifier_names, prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:map_app_deliver/constants.dart';
import 'package:map_app_deliver/screens/clients_screens/paiement_client.dart';

class MapFactureColis extends StatefulWidget {
  const MapFactureColis({Key? key}) : super(key: key);

  @override
  _MapFactureColisState createState() => _MapFactureColisState();
}

class _MapFactureColisState extends State<MapFactureColis>
    with SingleTickerProviderStateMixin {
  Completer<GoogleMapController> mapController = Completer();
  static const double CAMERA_ZOOM = 12.0;
  static const double CAMERA_TITL = 0.5;
  static const double CAMERA_BEARING = 20;
  static const LatLng SOURCE_LOCATION = LatLng(42.7477863, -71.1699932);
  static const LatLng DEST_LOCATION = LatLng(42.6871386, -71.2143403);
  PointLatLng origin = const PointLatLng(42.7477863, -71.1699932);
  PointLatLng destination = const PointLatLng(42.6871386, -71.2143403);
  Set<Polyline> polylineSet = {};
  final globalKey = GlobalKey<ScaffoldState>();
  late BitmapDescriptor myIconDepart, myIconArrive;

  Set<Marker> _markers = {};
  Set<Polyline> _polylines = {};
  List<LatLng> polylineCoordinates = [];

  PolylinePoints polylinePoints = PolylinePoints();
  PolylineResult polylineResult = PolylineResult();

  String googleAPiKey = "AIzaSyCofxHQ10DT3hQx64FsBthB7DYs3aZEST4";

  @override
  void initState() {
    super.initState();
    myIconArrive = BitmapDescriptor.defaultMarker;
    myIconDepart = BitmapDescriptor.defaultMarkerWithHue(80);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    CameraPosition intialLocation = const CameraPosition(
        target: SOURCE_LOCATION,
        zoom: CAMERA_ZOOM,
        tilt: CAMERA_TITL,
        bearing: CAMERA_BEARING);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: const Text("Mode de paiement"),
        ),
        key: globalKey,
        body: SizedBox(
          height: size.height,
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    SizedBox(
                      width: size.width,
                      height: size.height * 0.80,
                      child: GoogleMap(
                        initialCameraPosition: intialLocation,
                        myLocationEnabled: true,
                        tiltGesturesEnabled: true,
                        compassEnabled: true,
                        scrollGesturesEnabled: true,
                        zoomGesturesEnabled: true,
                        onMapCreated: _onMapCreated,
                        markers: _markers,
                        polylines: _polylines,
                      ),
                    ),
                  ],
                ),
                Container(
                  width: size.width,
                  height: size.height * 0.15,
                  decoration: BoxDecoration(color: kPrimaryPink),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Colis : COS-101210",
                          style: GoogleFonts.aBeeZee(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: kPrimaryWhite)),
                      Text("Prix : 200 XOF",
                          style: GoogleFonts.aBeeZee(
                              fontSize: 15, color: kPrimaryWhite)),
                      /*   SizedBox(
                        height: 5,
                      ), */
                      Text("Distance : 0.5 km",
                          style: GoogleFonts.aBeeZee(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: kPrimaryWhite)),
                      Text("Prix :1000 XOF",
                          style: GoogleFonts.aBeeZee(
                              fontSize: 15, color: kPrimaryWhite)),
                      Text("Total : 1200 XOF",
                          style: GoogleFonts.aBeeZee(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: kPrimaryWhite)),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  width: size.width,
                  height: size.height * 0.06,
                  decoration: BoxDecoration(color: Colors.pink),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Icon(
                        Icons.arrow_left,
                        size: 50,
                        color: Colors.white,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return PaiementClient();
                          }));
                        },
                        child: Text("Paiement",
                            style: GoogleFonts.roboto(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  void _onMapCreated(GoogleMapController controller) async {
    mapController.complete(controller);

    setState(() {
      _addMarker(DEST_LOCATION, "destination", myIconArrive, "Numero 2",
          "destination");
    });
    setState(() {
      _addMarker(SOURCE_LOCATION, "origin", myIconDepart, "Numero 1", "origin");
    });
    _createPolylines();
    //setPolylines();
  }

  _addMarker(LatLng position, String id, BitmapDescriptor descriptor,
      String title, String snippet) {
    MarkerId markerId = MarkerId(id);
    Marker marker = Marker(
        infoWindow: InfoWindow(
          title: title,
          snippet: snippet,
        ),
        markerId: markerId,
        icon: descriptor,
        position: position);

    _markers.add(marker);
    //markers[markerId] = marker;
  }

  _createPolylines() async {
    // Initializing PolylinePoints
    polylinePoints = PolylinePoints();

    // Generating the list of coordinates to be used for
    // drawing the polylines
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      googleAPiKey, // Google Maps API Key
      origin,
      destination,
      travelMode: TravelMode.transit,
    );

    // Adding the coordinates to the list
    if (result.points.isNotEmpty) {
      for (var point in result.points) {
        polylineCoordinates.add(LatLng(point.latitude, point.longitude));
      }
    }

    // Defining an ID
    PolylineId id = PolylineId('poly');

    // Initializing Polyline
    Polyline polyline = Polyline(
      polylineId: id,
      color: Colors.red,
      points: polylineCoordinates,
      width: 3,
    );

    // Adding the polyline to the map
    setState(() {
      _polylines.add(polyline);
    });
  }
}
