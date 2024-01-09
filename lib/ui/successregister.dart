part of 'pages.dart';

class SuccessSignUpPage extends StatelessWidget {
  const SuccessSignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IllustrationPage(
        title: "Yeah! Completed",
        subtitle: "Now you can start using the app",
        picturePath: 'assets/food_wishes.png',
        buttonTap1: () {},
        buttonTap2: () {},
        buttonTitle1: '',
        buttonTitle2: 'Find Foods',
      ),
    );
  }
}
