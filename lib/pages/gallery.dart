import 'package:flutter/material.dart';
import 'package:welcome/pages/drawer.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 114, 90, 208),
        title: const Text('Gallery'),
      ),
      drawer: const DrawerPage(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildGalleryItem('assets/gall/image_1.jpg', 'Male dorm'),
                    _buildGalleryItem(
                        'assets/gall/image_2.jpg', 'Engineering library'),
                    _buildGalleryItem('assets/gall/image_4.jpg', 'DSTV screen'),
                    _buildGalleryItem(
                        'assets/gall/image_5.jpg', 'Football field'),
                    _buildGalleryItem(
                        'assets/gall/image_6.jpg', 'students lounge'),
                    _buildGalleryItem(
                        'assets/gall/image_8.jpg', 'informatics building '),
                    _buildGalleryItem(
                        'assets/gall/image_10.jpg', 'Graguation hall'),
                    _buildGalleryItem('assets/gall/image_12.jpg', 'cafe'),
                    _buildGalleryItem('assets/gall/image_14.jpg', 'class room'),
                    _buildGalleryItem(
                        'assets/gall/image_15.jpg', 'road to ancharo'),
                    _buildGalleryItem(
                        'assets/gall/image_16.jpg', 'market place'),
                    _buildGalleryItem(
                        'assets/gall/image_17.jpg', 'sport field'),
                    _buildGalleryItem(
                        'assets/gall/image_18.jpg', 'registeral garden'),
                    _buildGalleryItem(
                        'assets/gall/image_19.jpg', 'regisral bulding'),
                    _buildGalleryItem(
                        'assets/gall/image_21.jpg', 'registeral garden'),
                    _buildGalleryItem(
                        'assets/gall/image_22.jpg', 'registeral garden'),
                    _buildGalleryItem('assets/gall/image_23.jpg', 'cafe'),
                    _buildGalleryItem(
                        'assets/gall/image_24.jpg', 'enginering library'),
                    _buildGalleryItem(
                        'assets/gall/image_25.jpg', 'student clinic'),
                    _buildGalleryItem(
                        'assets/gall/image_26.jpg', 'fresh library'),
                    _buildGalleryItem(
                        'assets/gall/image_27.jpg', 'informatics library'),
                    _buildGalleryItem('assets/gall/image_28.jpg', 'class room'),
                    _buildGalleryItem('assets/gall/image_29.jpg', 'class room'),
                    _buildGalleryItem(
                        'assets/gall/image_30.jpg', 'bank building'),
                    _buildGalleryItem(
                        'assets/gall/image_31.jpg', 'kiot garden'),
                    _buildGalleryItem(
                        'assets/gall/image_32.jpg', 'kiot garden'),
                    _buildGalleryItem(
                        'assets/gall/image_33.jpg', 'refesh area'),
                    _buildGalleryItem(
                        'assets/gall/image_34.jpg', 'thinking area'),
                    _buildGalleryItem(
                        'assets/gall/image_35.jpg', 'teachers cafe(launge)'),
                    _buildGalleryItem(
                        'assets/gall/image_36.jpg', 'student cafe'),
                    _buildGalleryItem('assets/gall/image_37.jpg', 'class room'),
                    _buildGalleryItem(
                        'assets/gall/image_38.jpg', 'enginering library'),
                    _buildGalleryItem(
                        'assets/gall/image_40.jpg', 'male dorm(white house)'),
                    _buildGalleryItem(
                        'assets/gall/image_41.jpg', 'wollo university door'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildGalleryItem(String imagePath, String description) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 330,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0, 5),
              blurRadius: 10,
            ),
          ],
        ),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
            if (imagePath.contains('landscape'))
              Positioned.fill(
                child: Image.asset(
                  'assets/field_image/Information_Technology.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                ),
                child: Text(
                  description,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
