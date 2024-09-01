import 'package:e_commerce/screens/signIn/signin_screen.dart';
import 'package:e_commerce/screens/splash/components/splash_content.dart';
import 'package:e_commerce/size_config.dart';
// import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final List<Map<String, String>> splashData = [
    {"text": "Welcome to Shopyme, Let's shop!", "image": "assets/images/2.png"},
    {
      "text": "We help people connect to the stoer \naround the country",
      "image": "assets/images/1.png"
    },
    {
      "text": "We provide the easiest way to shop, \nJust stay at your home",
      "image": "assets/images/3.png"
    },
  ];
  var currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPageIndex = value;
                    // print(currentPageIndex);
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) {
                  return SplashContent(
                    text: splashData[index]['text']!,
                    image: splashData[index]['image']!,
                  );
                },
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: [
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) {
                          return dotElement(context, index: index);
                        },
                      ),
                    ),
                    Spacer(flex: 2),
                    SizedBox(
                      height: getProportionateScreenHeight(56),
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            foregroundColor:
                                Theme.of(context).colorScheme.onPrimary,
                            backgroundColor:
                                Theme.of(context).colorScheme.primary),
                        onPressed: () {
                          Navigator.pushNamed(context, SignInScreen.routeName);
                        },
                        child: Text(
                          'Continue',
                          style: TextStyle(
                              fontSize: getProportionateScreenWidth(18)),
                        ),
                      ),
                    ),
                    Spacer(flex: 2),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  AnimatedContainer dotElement(BuildContext context, {required int index}) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 100),
      margin: EdgeInsets.all(5),
      width: currentPageIndex == index ? 20 : 6,
      height: 6,
      decoration: BoxDecoration(
        color: currentPageIndex == index
            ? Theme.of(context).colorScheme.primary
            : Colors.grey,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
