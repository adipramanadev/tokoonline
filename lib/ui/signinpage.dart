part of 'pages.dart';

class SiginPage extends StatefulWidget {
  const SiginPage({super.key});

  @override
  State<SiginPage> createState() => _SiginPageState();
}

class _SiginPageState extends State<SiginPage> {
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return GeneralPage(
      title: 'Sign In',
      subtitle: 'Find your best meal today',
      child: Column(
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 26, defaultMargin, 6),
            child: Text(
              'Email Address',
              style: blackFontStyle2,
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(color: Colors.black),
            ),
            child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: greyFontStyle,
                  hintText: 'Type your email address',
                )),
          )
        ],
      ),
    );
  }
}
