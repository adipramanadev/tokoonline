part of 'pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectPage = 0;
  PageController pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          SafeArea(
            child: Container(color: 'FAFAFC'.toColor()),
          ),
          SafeArea(
            child: PageView(
              controller: pageController,
              onPageChanged: (index) {
                setState(() {
                  selectPage = index;
                });
              },
              children: [
                Center(
                  child: FoodPage(),
                ),
                // Center(
                //   child: OrderHistoryPage(),
                // ),
                // Center(
                //   child: ProfilePage(),
                // )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: CustomBottomNavBar(
              selectedIndex: selectPage,
              onTap: (index) {
                setState(() {
                  selectPage = index;
                });
                pageController.jumpToPage(selectPage);
              },
            ),
          )
        ],
      ),
    );
  }
}
