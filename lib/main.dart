import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:health_app/ui/auth/login.dart';
import 'package:insta_assets_picker/insta_assets_picker.dart';
import 'package:photo_manager/photo_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(),
        useMaterial3: true,
      ),
      home: const Login(),
    );
  }
}

class AssetPickerExample extends StatefulWidget {
  const AssetPickerExample({super.key});

  @override
  _AssetPickerExampleState createState() => _AssetPickerExampleState();
}

class _AssetPickerExampleState extends State<AssetPickerExample> {
  List<AssetEntity> _assets = [];

  void _pickAssets() async {
    List<AssetEntity>? result = await InstaAssetPicker.pickAssets(
      context,
      maxAssets: 5,
      onCompleted: (Stream<InstaAssetsExportDetails> exportDetails) {},
    );
    if (result != null) {
      setState(() {
        _assets = result;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Asset Picker Example'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: _pickAssets,
            child: const Text('Pick Assets'),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 4.0,
                mainAxisSpacing: 4.0,
              ),
              itemCount: _assets.length,
              itemBuilder: (context, index) {
                return AssetThumbnail(asset: _assets[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class AssetThumbnail extends StatelessWidget {
  final AssetEntity asset;

  const AssetThumbnail({Key? key, required this.asset}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Uint8List?>(
      future: asset.thumbnailDataWithSize(const ThumbnailSize(200, 200)),
      builder: (_, snapshot) {
        final bytes = snapshot.data;
        if (bytes == null) {
          return const Center(child: CircularProgressIndicator());
        }
        return Image.memory(bytes, fit: BoxFit.cover);
      },
    );
  }
}
