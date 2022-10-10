import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:jcargo/components/constants.dart';
import 'package:location/location.dart';

class GoogleMapContainer extends StatefulWidget {
  const GoogleMapContainer({super.key});

  @override
  State<GoogleMapContainer> createState() => _GoogleMapContainerState();
}

class _GoogleMapContainerState extends State<GoogleMapContainer> {
  final Completer<GoogleMapController> _controller = Completer();

  static const LatLng sourceLocation = LatLng(36.8219, 1.2921);
  static const LatLng destinationLocation = LatLng(37.1274, 0.4832);

  List<LatLng> polylinesCoordinates = [];
  LocationData? currentLocation;

  BitmapDescriptor sourceIcon = BitmapDescriptor.defaultMarker;
  BitmapDescriptor destinationIcon = BitmapDescriptor.defaultMarker;
  BitmapDescriptor currentLocationIcon = BitmapDescriptor.defaultMarker;

  void getCurrentLocation() async {
    Location location = Location();

    location.getLocation().then(
      (location) {
        currentLocation = location;
      },
    );

    GoogleMapController googleMapController = await _controller.future;

    location.onLocationChanged.listen((newLocation) {
      currentLocation = newLocation;

      googleMapController.animateCamera(CameraUpdate.newCameraPosition(
        CameraPosition(
            zoom: 8,
            target: LatLng(newLocation.latitude!, newLocation.longitude!)),
      ));

      setState(() {});
    });
  }

  void getPolyPoints() async {
    PolylinePoints polylinePoints = PolylinePoints();

    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
        google_api_key,
        PointLatLng(sourceLocation.latitude, sourceLocation.longitude),
        PointLatLng(
            destinationLocation.latitude, destinationLocation.longitude));

    if (result.points.isNotEmpty) {
      result.points.forEach((PointLatLng point) =>
          polylinesCoordinates.add(LatLng(point.latitude, point.longitude)));

      setState(() {});
    }

    print(result.points);
  }

  @override
  void initState() {
    getCurrentLocation();
    getPolyPoints();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GoogleMap(
      initialCameraPosition: CameraPosition(
        target: LatLng(sourceLocation.latitude, sourceLocation.longitude),
        zoom: 8,
      ),
      polylines: {
        Polyline(
            polylineId: const PolylineId('route'), points: polylinesCoordinates)
      },
      markers: {
        const Marker(markerId: MarkerId("Source"), position: sourceLocation),
        const Marker(
            markerId: MarkerId("Destination"), position: destinationLocation),
      },
      onMapCreated: (mapController) {
        _controller.complete(mapController);
      },
    ));
  }
}
