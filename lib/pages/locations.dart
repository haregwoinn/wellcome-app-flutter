import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';



class MapSample extends StatefulWidget {
  const MapSample({Key? key}) : super(key: key);

  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();


//  late GoogleMapController _mapController;
  final Set<Marker> _markers = {};

  @override
  void initState() {
    super.initState();
    _markers.add(const Marker(
      markerId: MarkerId('marker_1'),
      position: LatLng(11.048860938664289, 39.74872432889384),
      
      infoWindow: InfoWindow(
        title: 'Library',
        snippet: 'Freshman',
      ),
    ),
    );
    _markers.add(const Marker(
      markerId: MarkerId('marker_1'),
      position: LatLng(11.050584957715426, 39.74760865283694),
      
      infoWindow: InfoWindow(
        title: 'Library',
        snippet: 'Main',
      ),
    ),
    );
    _markers.add(const Marker(
      markerId: MarkerId('marker_2'),
      position: LatLng(11.049887761993675, 39.74732626069353),
      
      infoWindow: InfoWindow(
        title: 'Wollo University',
        snippet: 'Student Lounge',
      ),
    ),
    );
    _markers.add(const Marker(
      markerId: MarkerId('marker_2'),
      position: LatLng(11.051456641411985, 39.74838320472702),
      
      infoWindow: InfoWindow(
        title: 'Wollo University',
        snippet: 'Teachers Lounge',
      ),
    ),
    );
    _markers.add(const Marker(
      markerId: MarkerId('marker_2'),
      position: LatLng(11.049128602506581, 39.748533913604845),
      
      infoWindow: InfoWindow(
        title: 'Library',
        snippet: 'Informatics',
      ),
    ),
    );
    _markers.add(const Marker(
      markerId: MarkerId('marker_2'),
      position: LatLng(11.048709848915918, 39.74777358079812),
      
      infoWindow: InfoWindow(
        title: 'Mini stadium',
        snippet: 'Soccer field',
      ),
    ),
    );
    _markers.add(const Marker(
      markerId: MarkerId('marker_2'),
      position: LatLng(11.050706034610217, 39.7467904292205),
      
      infoWindow: InfoWindow(
        title: 'Wollo University',
        snippet: 'Main gate',
      ),
    ),
    );
    _markers.add(const Marker(
      markerId: MarkerId('marker_2'),
      position: LatLng(11.048300490491513, 39.74877499572647),
      
      infoWindow: InfoWindow(
        title: 'Female Dormitory',
        snippet: 'Main Gate',
      ),
    ),
    );
    _markers.add(const Marker(
      markerId: MarkerId('marker_2'),
      position: LatLng(11.04761298832444, 39.74899856496266),
      
      infoWindow: InfoWindow(
        title: 'Female Dormitory',
        snippet: 'Center',
      ),
    ),
    );
    _markers.add(const Marker(
      markerId: MarkerId('marker_2'),
      position: LatLng(11.047912965673271, 39.74965914513192),
      
      infoWindow: InfoWindow(
        title: 'Male Dormitory',
        snippet: 'Center',
      ),
    ),
    );
    _markers.add(const Marker(
      markerId: MarkerId('marker_2'),
      position: LatLng(11.049870776474293, 39.751056109059334),
      
      infoWindow: InfoWindow(
        title: 'Male Dormitory',
        snippet: 'White House',
      ),
    ),
    );
    _markers.add(const Marker(
      markerId: MarkerId('marker_2'),
      position: LatLng(11.054091352072689, 39.74977399490684),
      
      infoWindow: InfoWindow(
        title: 'Male Dormitory',
        snippet: 'Ancharo',
      ),
    ),
    );
    _markers.add(const Marker(
      markerId: MarkerId('marker_2'),
      position: LatLng(11.049206820220057, 39.750103158563434),
      
      infoWindow: InfoWindow(
        title: 'Wollo University',
        snippet: 'Gymnasium',
      ),
    ),
    );
    _markers.add(const Marker(
      markerId: MarkerId('marker_2'),
      position: LatLng(11.048936871798338, 39.74946727545499),
      
      infoWindow: InfoWindow(
        title: 'Informatics Laboratory',
        snippet: '(TechIno Club Office)',
      ),
    ),
    );
    _markers.add(const Marker(
      markerId: MarkerId('marker_2'),
      position: LatLng(11.050549482161298, 39.74813018444293),
      
      infoWindow: InfoWindow(
        title: 'Wollo University',
        snippet: 'Lecture Room Building 1',
      ),
    ),
    );
    _markers.add(const Marker(
      markerId: MarkerId('marker_2'),
      position: LatLng(11.05026060963228, 39.7484813146331),
      
      infoWindow: InfoWindow(
        title: 'Wollo University',
        snippet: 'Lecture Room Building 2',
      ),
    ),
    );
    _markers.add(const Marker(
      markerId: MarkerId('marker_2'),
      position: LatLng(11.05189248228898, 39.74855876982211),
      
      infoWindow: InfoWindow(
        title: 'Wollo University',
        snippet: 'Graduation Hall',
      ),
    ),
    );
    _markers.add(const Marker(
      markerId: MarkerId('marker_2'),
      position: LatLng(11.051745058854006, 39.74774444303935),
      
      infoWindow: InfoWindow(
        title: 'Informatics College Building',
        snippet: 'Office',
      ),
    ),
    );
    _markers.add(const Marker(
      markerId: MarkerId('marker_2'),
      position: LatLng(11.052475556228432, 39.74752733560458),
      
      infoWindow: InfoWindow(
        title: 'Registrar Building ',
        snippet: 'Office',
      ),
    ),
    );
    _markers.add(const Marker(
      markerId: MarkerId('marker_2'),
      position: LatLng(11.052378825838248, 39.74686020679549),
      
      infoWindow: InfoWindow(
        title: 'Administration Building',
        snippet: 'Office',
      ),
    ),
    );
    _markers.add(const Marker(
      markerId: MarkerId('marker_2'),
      position: LatLng(11.051963615070372, 39.7467044659571),
      
      infoWindow: InfoWindow(
        title: 'Commercial Bank Of Ethiopia Building',
        snippet: 'Office',
      ),
    ),
    );
    _markers.add(const Marker(
      markerId: MarkerId('marker_2'),
      position: LatLng(11.05264574673582, 39.74646969245447),
      
      infoWindow: InfoWindow(
        title: 'Colleges Of Architecture Building',
        snippet: 'Office/Laboratory',
      ),
    ),
    );
    _markers.add(const Marker(
      markerId: MarkerId('marker_2'),
      position: LatLng(11.052002688414436, 39.74951825270315),
      
      infoWindow: InfoWindow(
        title: 'Wollo University ',
        snippet: 'Student Cafeteria',
      ),
    ),
    );
  }




  static const CameraPosition _kGooglePlex = CameraPosition(
    // target: LatLng(37.42796133580664, -122.085749655962),
      target:LatLng(11.050805082202048, 39.74686162034686),
    zoom: 16.4746,
  );

  // static const CameraPosition _kLake = CameraPosition(
  //     bearing: 192.8334901395799,
  //     // target: LatLng(37.43296265331129, -122.08832357078792),
  //     target:LatLng(11.050805082202048, 39.74686162034686),
  //     tilt: 59.440717697143555,
  //     zoom: 19.151926040649414);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
        title: const Text('Wollo University Map', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromARGB(255, 114, 90, 208),
        elevation: 0,
         leading: IconButton(
                      icon:  const Icon(Icons.arrow_back, color: Colors.white),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
        
      ),
     body:GoogleMap(
        mapType: MapType.hybrid,
        initialCameraPosition: _kGooglePlex,

         markers: _markers,

        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
     ),
      );
      
      // floatingActionButton: FloatingActionButton.extended(
      //   // onPressed: _goToTheLake,
      //   onPressed: () {
          
      //   },
      //   label: const Text('To the lake!'),
      //   icon: const Icon(Icons.directions_boat),
      // ),
 
  }

  // Future<void> _goToTheLake() async {
  //   final GoogleMapController controller = await _controller.future;
  //   controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  // }
}