import 'package:flutter/material.dart';
import 'package:gojek_clone/themes/colors.dart';
import 'package:gojek_clone/themes/font_sizes.dart';
import 'package:gojek_clone/themes/text_styles.dart';
import 'package:gojek_clone/themes/theme_data.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({super.key});

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: GojekColor.whiteL2,
              prefixIcon: const Icon(Icons.search),
              contentPadding: const EdgeInsets.symmetric(
                vertical: 16.0,
                horizontal: 18.0,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(100),
                borderSide: const BorderSide(
                  color: GojekColor.grey,
                  width: 1.0,
                ),
              ),
              hintText: 'Cari layanan, makanan, & tujuan',
              hintStyle: const TextStyle(
                fontSize: GojekFontSize.medium1,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        const SizedBox(width: 16.0),
        SizedBox(
          width: 52,
          height: 52,
          child: CircleAvatar(
            radius: 32.0,
            backgroundColor: GojekColor.grey,
            child: Padding(
              padding: const EdgeInsets.all(1.0),
              child: ClipOval(child: Image.asset("assets/images/yotsuba.png")),
            ),
          ),
        ),
      ],
    );
  }
}
