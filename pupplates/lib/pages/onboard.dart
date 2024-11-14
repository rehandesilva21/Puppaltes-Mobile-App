import 'package:flutter/material.dart';
import 'package:pupplates/pages/signup.dart';
import 'package:pupplates/widgets/content_model.dart';
import 'package:pupplates/widgets/widget_support.dart';

class Onboard extends StatefulWidget {
  const Onboard({super.key});

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Expanded(
              child: PageView.builder(
                  controller: _controller,
                  itemCount: contents.length,
                  onPageChanged: (int index) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  itemBuilder: (_, i) {
                    return Padding(
                      padding:
                          const EdgeInsets.only(top: 90.0, right: 20.0, left: 20.0),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 70.0,
                          ),
                          Image.asset(
                            contents[i].image,
                            height: 300,
                            width: 300,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(
                            height: 40.0,
                          ),
                          Text(
                            contents[i].title,
                            style: AppWidget.HeadlineTextFeildStyle(),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            contents[i].description,
                            style: AppWidget.lightTextFeildStyle(),
                          )
                        ],
                      ),
                    );
                  }),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  contents.length,
                  (index) => buildDot(index, context),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                if (currentIndex == contents.length - 1) {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => const Signup()));
                }
                _controller.nextPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeIn);
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20)),
                height: 60,
                margin: const EdgeInsets.all(50),
                width: double.infinity,
                child: Center(
                  child: Text(
                    currentIndex == contents.length - 1
                        ? "Get Started"
                        : 'Next',
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontFamily: 'Poppins'),
                  ),
                ),
              ),
            )
          ],
        ));
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10.0,
      width: currentIndex == index ? 18 : 7,
      margin: const EdgeInsets.only(right: 5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Colors.black38,
      ),
    );
  }
}
