import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:intl/intl.dart';
import 'package:my_siri/api/api_service.dart';
import 'package:my_siri/models/response/course_response.dart';
import 'package:my_siri/modules/main/home/tabs/feed/slider_conroller.dart';
import 'package:my_siri/modules/main/home/tabs/feed/slider_indicator.dart';

class GetxHorizontalImageSlider extends StatelessWidget {
  GetxHorizontalImageSlider({super.key});
  final Future<List<CourseModel>> courses = ApiService.getCourses();
  final _controller = PageController();
  static const String format = "yyyy-MM-dd'T'HH:mm:ss.SSSZZ";

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FutureBuilder(
            future: courses,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Column(
                  children: [
                    SizedBox(
                      height: 155,
                      child: PageView.builder(
                        controller: _controller,
                        onPageChanged: (index) {
                          Get.find<SliderController>().selectedIndex.value =
                              index;
                        },
                        itemCount: snapshot.data!.length,
                        itemBuilder: (context, index) {
                          return ClipRect(
                            child: Container(
                              width: 275,
                              margin: const EdgeInsets.symmetric(
                                horizontal: 6,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: const DecorationImage(
                                  image: NetworkImage(
                                      // TODO: image data 처리!
                                      'https://s3.ap-northeast-2.amazonaws.com/com.liveschole/course/1676439475609.png.medium'
                                      // snapshot.data![index].imageUrl,
                                      ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              padding: const EdgeInsets.all(16),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    snapshot.data![index].title,
                                    softWrap: true,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '완독 ${snapshot.data![index].price}분 소요',
                                        style: TextStyle(
                                          color: Colors.white.withOpacity(0.8),
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        DateFormat('yyyy.MM.dd hh:mm').format(
                                            DateFormat(format).parse(snapshot
                                                .data![index].createdAt)),
                                        style: TextStyle(
                                          color: Colors.white.withOpacity(0.8),
                                          fontWeight: FontWeight.w700,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 20),
                    GetBuilder<SliderController>(builder: (controller) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          snapshot.data!.length,
                          (index) => GestureDetector(
                            onTap: () {
                              _controller.animateToPage(index,
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.easeIn);
                            },
                            child: SliderIndicator(index: index),
                          ),
                        ),
                      );
                    })
                  ],
                );
              }
              return const CircularProgressIndicator();
            }),
      ],
    );
  }
}
