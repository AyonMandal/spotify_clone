import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_dummy/common/widgets/app_button/app_button.dart';
import 'package:spotify_dummy/core/config/assets/app_images.dart';
import 'package:spotify_dummy/core/config/assets/app_vectors.dart';
import 'package:spotify_dummy/core/config/theme/app_colors.dart';

import '../../choose_mode/pages/choose_mode.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    void redirectToChooseMode() {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const ChooseMode(),
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.introBackground),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.3),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 60),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SvgPicture.asset(AppVectors.spotifyLogo),
                const Spacer(),
                const Text(
                  "Enjoy millions of songs",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.grey,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(height: 30),
                AppButton(
                  text: 'Get Started',
                  onPressed: () {
                    redirectToChooseMode();
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
