import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_siri/shared/widgets/liveklass_circular_progress_indicator.dart';

class ChallengeScreen extends StatelessWidget {
  const ChallengeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          foregroundColor: const Color(0XFF72777B),
          title: const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              '챌린지',
              style: TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          actions: [
            SizedBox(
              width: 50,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Color(0XFFB1B8C0),
                ),
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '신입생',
                          style: TextStyle(
                            color: Color(0XFF82878D),
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '초급자 레벨에 도달하려면 180 포인트 남았어요',
                          style: TextStyle(
                            color: Color(0XFFBBBFC3),
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        SizedBox(
                          width: 72,
                          height: 72,
                          child: LiveklassCircularProgressIndicator(
                            value: 30.0,
                            foregroundColor: const Color(0XFF9E77ED),
                            backgroundColor:
                                const Color(0XFF9E77ED).withOpacity(0.2),
                          ),
                        ),
                        SizedBox(
                          width: 72,
                          height: 72,
                          child: Center(
                            child: SvgPicture.asset(
                              'images/progress.svg',
                              width: 22,
                              height: 22,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
