import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:gdsc_solution_challenge_2024/utils/constants/colors.dart';

class ScanScreen extends StatefulWidget {
  const ScanScreen({super.key});

  @override
  State<ScanScreen> createState() => _ScanScreenState();
}

class _ScanScreenState extends State<ScanScreen> {
  late List<CameraDescription> cameras;
  late CameraController cameraController;

  bool _cameraInitialized = false;

  @override
  void initState() {
    startCamera();
    super.initState();
  }

  Future<void> startCamera() async {
    cameras = await availableCameras();

    cameraController = CameraController(
      cameras[0],
      ResolutionPreset.high,
      enableAudio: false,
    );

    await cameraController.initialize().then((value) {
      if (!mounted) {
        return;
      }
      setState(() {
        _cameraInitialized = true;
      }); // To refresh the camera widget
    }).catchError((e) {
      print(e);
    });
  }

  @override
  void dispose() {
    cameraController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_cameraInitialized && cameraController.value.isInitialized) {
      return Stack(
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: CameraPreview(cameraController),
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.black.withOpacity(0.6),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: const EdgeInsets.only(bottom: 20.0),
              height: 72,
              width: 72,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.TEXT_COLOR_DARK,
                    width: .0,
                  ),
                  shape: BoxShape.circle,
                  color: AppColors.ACCENT_COLOR),
              child: const Icon(
                Icons.photo_camera_outlined,
                size: 32,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              margin: const EdgeInsets.only(left: 30.0, top: 40.0),
              height: 72,
              width: 72,
              child: const Icon(
                Icons.image,
                color: AppColors.ACCENT_COLOR,
                size: 48,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              margin: const EdgeInsets.only(right: 30.0, top: 40.0),
              height: 72,
              width: 72,
              child: const Icon(
                Icons.flash_on_outlined,
                color: AppColors.ACCENT_COLOR,
                size: 48,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 280,
              width: 320,
              decoration: BoxDecoration(
                border: Border.all(
                  color: AppColors.PRIMARY_COLOR,
                  width: 5.0,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: const EdgeInsets.only(top: 325.0),
              child: const Text(
                "search item here",
                style: TextStyle(
                  color: AppColors.TEXT_COLOR_LIGHT,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
            ),
          )
        ],
      );
    } else {
      return const SizedBox(
        height: 100,
        width: 100,
        child: Text("Error"),
      );
    }
  }
}