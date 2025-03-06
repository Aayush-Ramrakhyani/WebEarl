import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView(
            controller: _controller,
            children: [
              OnboardingPage(
                imagePath: 'assets/images/Aire.png',  
                title: "WELCOME TO NIKE",
                subtitle: "",
                buttonText: "Get Started",
              ),
              OnboardingPage(
                imagePath: 'assets/images/Aire.png',
                title: "Let's Start Journey With Nike",
                subtitle: "Smart, Gorgeous & Fashionable Collection Explore Now",
                buttonText: "Next",
              ),
              OnboardingPage(
                imagePath: 'assets/images/Spring.png',
                title: "You Have The Power To",
                subtitle: "There Are Many Beautiful And Attractive Plants To Your Room",
                buttonText: "Next",
              ),
            ],
          ),
          Positioned(
            bottom: 80,
            child: SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(
                activeDotColor: Colors.yellow,
                dotHeight: 8,
                dotWidth: 8,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  final String buttonText;

  const OnboardingPage({
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imagePath, height: 300), // Replace with actual images
          SizedBox(height: 20),
          Text(
            title,
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10),
          Text(
            subtitle,
            style: TextStyle(fontSize: 16, color: Colors.white70),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 40),
          ElevatedButton(
            onPressed: () {},
            child: Text(buttonText),
          ),
        ],
      ),
    );
  }
}