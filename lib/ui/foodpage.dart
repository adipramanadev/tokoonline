part of "pages.dart";

class FoodPage extends StatefulWidget {
  const FoodPage({super.key});

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    double listItemWidth =
        MediaQuery.of(context).size.width - 2 * defaultMargin;
    return ListView(
      children: [
        Column(
          children: [
            ///header
            Container(
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              color: Colors.white,
              height: 100,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Food Market", style: blackFontStyle1),
                      Text(
                        "Let's get some food",
                        style:
                            greyFontStyle.copyWith(fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        8.0,
                      ),
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://i.pinimg.com/474x/8a/f4/7e/8af47e18b14b741f6be2ae499d23fcbe.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ],
              ),
            ),

            ///LIST FOOD
            Container(
              height: 258,
              width: double.infinity,
              child:ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  
                ]
              )
            )],
        )
      ],
    );
  }
}
