import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/utils/text_styles.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 218,
      child: Container(
        decoration: BoxDecoration(
            image:
                const DecorationImage(image: AssetImage(Assets.imagesCardBg)),
            borderRadius: BorderRadius.circular(8.0),
            color: const Color(0xFF4EB7F2)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 6, top: 6),
              child: ListTile(
                title: Text(
                  "Name card",
                  style: AppTextStyles.styleReqular16
                      .copyWith(color: Colors.white),
                ),
                subtitle: Text(
                  "Syah Bandi",
                  style: AppTextStyles.styleSemiBold20
                      .copyWith(color: Colors.white),
                ),
                trailing: SvgPicture.asset(Assets.imagesGallery),
              ),
            ),
            const Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.only(right: 20, bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("0918 8124 0042 8129",
                      style: AppTextStyles.styleSemiBold24
                          .copyWith(color: Colors.white)),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    "12/20 - 124",
                    style: AppTextStyles.styleReqular16
                        .copyWith(color: Colors.white),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
