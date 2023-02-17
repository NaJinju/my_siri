import 'package:flutter/material.dart';
import 'package:my_siri/modules/main/home/tabs/feed/getx_horizontal_image_slider.dart';
import 'package:my_siri/modules/main/home/tabs/feed/vertical_feed_list.dart';
import 'package:my_siri/shared/enum/widget_enum.dart';
import 'package:my_siri/shared/widgets/custom_select_box.dart';

class FeedTab extends StatelessWidget {
  const FeedTab({super.key});
  static const List<Map<String, dynamic>> categoryOptions = [
    {'label': '전체', 'value': -1},
    {'label': '카테고리 1', 'value': 100},
    {'label': '카테고리 2', 'value': 101},
    {'label': '카테고리 3', 'value': 102},
  ];

  static const List<Map<String, dynamic>> sortOptions = [
    {'label': '최신순', 'value': 'update'},
    {'label': '인기순', 'value': 'popular'},
    {'label': '댓글순', 'value': 'comment'},
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 25,
          ),
          GetxHorizontalImageSlider(),
          // const HorizontalImageSlider(),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomSelectBox(
                        styleType: SelectBoxStyleType.combo,
                        options: categoryOptions),
                    CustomSelectBox(
                        styleType: SelectBoxStyleType.text,
                        options: sortOptions)
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                VerticalFeedList(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
