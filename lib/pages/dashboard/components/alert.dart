import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/colors.dart';

class AlertComponent extends StatefulWidget {
  const AlertComponent({super.key});

  @override
  State<AlertComponent> createState() => _AlertComponentState();
}

class _AlertComponentState extends State<AlertComponent> {
  List<Map<dynamic, dynamic>> data = [
    {
      "social_media_promotion":
          "Introducing Pizza House: The Best Pizza in Town! At Pizza House, we're committed to bringing you the freshest and tastiest pizzas at unbeatable prices. Whether you're craving a classic Margherita or a loaded pepperoni pizza, we've got something to satisfy every palate. Enjoy the convenience of free home delivery every day and savor the quality of our fresh ingredients, ensuring every bite is bursting with flavor. Quality pizza shouldn't break the bank, and our menu offers fantastic value for money. New to Pizza House? Enjoy a special discount of 20% off your first order. Just mention this offer when you place your order. Call us at +200 5666 890 to place your delivery order, visit us at Glasgow Avenue 20, NY, or order online at www.pizzahouse.com for even more convenience. Check our website and social media pages for daily specials and exclusive offers, and sign up for our loyalty program to earn points with every purchase, redeemable for discounts and free items. Join our community of pizza lovers and experience why Pizza House is the talk of the town. Follow us on social media for the latest updates, promotions, and mouth-watering pizza photos. Don't wait! Call +200 5666 890 now and treat yourself to the best pizza experience in town.",
      "poster_link":
          "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/pizza-restaurant-flyer-design-template-e2f1639a2904f30a9885dfc328ab7777_screen.jpg?ts=1637019851"
    },
    {
      "social_media_promotion":
          "Discover the deliciousness at Your Pizza! Indulge in our wide range of Italian specialties and enjoy great discounts. Our pizzas are made with the freshest ingredients and crafted to perfection to ensure you have an unforgettable experience with every bite. With delivery available, you can enjoy our pizzas from the comfort of your home. Call us at +123 456 789 to place your order, or visit our website for more details and to explore our menu. Follow us on social media to stay updated on the latest offers and promotions. Don't miss out on the chance to treat yourself to the best pizza in town at unbeatable prices!",
      "poster_link":
          "https://i.ibb.co/j8WkPxr/gs062-pizzastation-preview8-4d0fd322a902713d375c54ecf8bbaa0bab39a193e0732d084ff954c1dc2fa292.jpg"
    },
    {
      "social_media_promotion":
          "Indulge in the rich Italian taste at Pizza Logo! Enjoy our delicious pizzas, crafted with the finest ingredients to deliver a great taste experience. For only \$12.5, savor the authentic flavors that make our pizzas irresistible. Don't miss our special promotion: Buy 1, Get 1 Free! It's the perfect opportunity to share the joy of pizza with friends and family. Order now by calling +12 34567 89 and get your favorite pizzas delivered right to your door. Stay tuned to our social media for the latest updates, offers, and mouth-watering pizza photos. Experience the great taste of Pizza Logo today!",
      "poster_link":
          "https://i.ibb.co/vxP2tWy/hand-drawn-pizza-poster-restaurant-23-2150266592.jpg"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      scrollable: true,
      title: const Text("Create New Campaign"),
      content: Container(
        width: MediaQuery.of(context).size.width * 0.5,
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Campaign Name",
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Campaign Description",
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Campaign Budget",
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                child: SingleChildScrollView(
                  child: Wrap(
                    spacing: 20,
                    children: data
                        .map(
                          (e) => Container(
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.2,
                                  height: 200,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        e["poster_link"].toString(),
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  child: const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [],
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  child: Text(
                                      e['social_media_promotion'].toString()),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            side: BorderSide(
                                                color:
                                                    DigiPilotColors.primary)),
                                        padding: EdgeInsets.all(10)),
                                    onPressed: () {},
                                    child: Text("Select"))
                              ],
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ))
          ],
        ),
      ),
      actions: [
        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: DigiPilotColors.primary,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("Cancel"),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: DigiPilotColors.primary,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              padding: const EdgeInsets.all(20)),
          onPressed: () {
            // Navigator.pop(context);
          },
          child: const Text("Create"),
        ),
      ],
    );
  }
}
