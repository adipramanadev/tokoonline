part of 'pages.dart';

class GeneralPage extends StatelessWidget {
  final String title;
  final String subtitle;
  final Function onBackButtonPressed;
  final Widget child;
  Color backColor = 'FAFAFC'.toColor();

  GeneralPage({
    required this.title,
    required this.subtitle,
    required this.onBackButtonPressed,
    required this.child,
    required this.backColor,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          SafeArea(
            child: Container(
              child: Text("title"),
            ),
          ),
          SafeArea(
            child: ListView(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: defaultMargin),
                  width: double.infinity,
                  height: 100,
                  color: Colors.white,
                  child: Row(
                    children: [
                      onBackButtonPressed != null ?
                      GestureDetector(
                        onTap: () {
                          if (onBackButtonPressed != null) {
                            onBackButtonPressed();
                          }
                        }, 
                        child: Container(
                          width: 24,
                          height: 24,
                          margin: EdgeInsets.only(right: 26),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                
                              ),
                            )
                          )
                        )
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: defaultMargin,
            width: double.infinity,
            color: backColor,
          ),
          child ?? SizedBox(),
        ],
      ),
    );
  }
}
