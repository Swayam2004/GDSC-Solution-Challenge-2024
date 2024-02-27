import "package:flutter/material.dart";
import "package:gdsc_solution_challenge_2024/utils/constants/colors.dart";

class HomePageInfoContainer extends StatefulWidget {
  const HomePageInfoContainer({
    super.key,
    required this.infoName,
    required this.infoImage,
  });

  final String infoName;
  final String infoImage;

  @override
  State<HomePageInfoContainer> createState() => _HomePageInfoContainerState();
}

class _HomePageInfoContainerState extends State<HomePageInfoContainer> {
  late String _infoName;
  late String _infoImage;

  @override
  void initState() {
    super.initState();
    _infoName = widget.infoName;
    _infoImage = widget.infoImage;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 175,
      width: 150,
      margin: const EdgeInsets.only(
          left: 10.0, right: 5.0, top: 10.0, bottom: 10.0),
      decoration: BoxDecoration(
        color: Colors.green,
        image: DecorationImage(fit: BoxFit.cover, image: AssetImage(_infoImage)),
        border: Border.all(
          color: AppColors.TEXT_COLOR_DARK,
          width: 1.0,
          style: BorderStyle.solid,
        ),
      ),
      child: Center(
        child: Stack(
          children: <Widget>[
            // Stroked text as border.
            Text(
              _infoName,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 15,
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 1
                  ..color = AppColors.TEXT_COLOR_DARK,
              ),
            ),
            // Solid text as fill.
            Text(
              _infoName,
              style: const TextStyle(
                fontSize: 15,
                color: AppColors.ACCENT_COLOR,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
