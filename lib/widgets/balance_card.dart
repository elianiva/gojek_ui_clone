import 'package:flutter/material.dart';
import 'package:gojek_clone/themes/colors.dart';
import 'package:gojek_clone/themes/font_sizes.dart';
import 'package:gojek_clone/themes/text_styles.dart';
import 'package:gojek_clone/widgets/labeled_button_icon.dart';
import 'package:google_fonts/google_fonts.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard({super.key});

  final kMenuIconSize = 24.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      decoration: BoxDecoration(
        color: GojekColor.blue,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              2,
              (index) => Container(
                width: 4.0,
                height: 12.0,
                margin:
                    const EdgeInsets.symmetric(vertical: 2.0, horizontal: 8),
                decoration: BoxDecoration(
                  color: index % 2 == 0 ? GojekColor.grey : GojekColor.white,
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 150,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 120,
                  height: 8,
                  decoration: const BoxDecoration(
                    color: GojekColor.lightBlue,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8),
                    ),
                  ),
                ),
                const SizedBox(height: 12.0),
                Container(
                  width: 140,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: GojekColor.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "gopay",
                        style: GoogleFonts.roboto(
                            color: GojekColor.blackText,
                            fontWeight: FontWeight.bold,
                            fontSize: GojekFontSize.large2),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        "Saldo masih kosong",
                        style:
                            GoogleFonts.roboto(fontSize: GojekFontSize.small3),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        "Klik buat isi",
                        style: GoogleFonts.roboto(
                          fontSize: GojekFontSize.medium1,
                          color: GojekColor.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),
          Row(
            children: [
              LabeledButtonIcon(
                label: "Bayar",
                iconPath: "assets/icons/ic_bayar.png",
                iconWidth: kMenuIconSize,
                iconHeight: kMenuIconSize,
                labelStyle: GojekTextStyles.textButtonWhite,
              ),
              const SizedBox(width: 8),
              LabeledButtonIcon(
                label: "Top Up",
                iconPath: "assets/icons/ic_topup.png",
                iconWidth: kMenuIconSize,
                iconHeight: kMenuIconSize,
                labelStyle: GojekTextStyles.textButtonWhite,
              ),
              const SizedBox(width: 8),
              LabeledButtonIcon(
                label: "Eksplor",
                iconPath: "assets/icons/ic_eksplor.png",
                iconWidth: kMenuIconSize,
                iconHeight: kMenuIconSize,
                labelStyle: GojekTextStyles.textButtonWhite,
              ),
            ],
          )
        ],
      ),
    );
  }
}
