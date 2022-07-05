import 'package:flutter/material.dart';

class HomeFragment extends StatefulWidget {
  const HomeFragment({Key? key}) : super(key: key);

  @override
  State<HomeFragment> createState() => _HomeFragmentState();
}

class _HomeFragmentState extends State<HomeFragment> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).padding.top + 20,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Welcome Back,",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "DevJonny",
                      style: TextStyle(
                        color: Color(0xFF2A2F58),
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                    color: Color(0xFF5874DF),
                    borderRadius: BorderRadius.all(
                      Radius.elliptical(30, 30),
                    ),
                  ),
                  child: Center(
                    child: ClipOval(
                      child: Image.asset("assets/images/profile.jpg"),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "My Cards",
                  style: TextStyle(
                    color: Color(0xFF2A2F58),
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                TextButton.icon(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(5),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    alignment: Alignment.centerLeft,
                  ),
                  onPressed: () {},
                  icon: const Icon(
                    Icons.add_circle_rounded,
                    color: Color(0xFF5874DF),
                  ),
                  label: const Text(
                    'Add Card',
                    style: TextStyle(
                      color: Color(0xFF5874DF),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                const SizedBox(width: 20),
                _makeCard(0, "10/22", 843.42, 1234, const Color(0xFF5874DF)),
                const SizedBox(width: 15),
                _makeCard(1, "11/23", 264.36, 5678, const Color(0xFF51CAE4)),
                const SizedBox(width: 20),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "History",
                  style: TextStyle(
                    color: Color(0xFF2A2F58),
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'View all',
                    style: TextStyle(
                      color: Color(0xFF5874DF),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: _makeHistory(Image.asset("assets/images/spotify_logo.png"), "Spotify", "06 Jul 2022", 129.98, false),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: _makeHistory(Image.asset("assets/images/transfer_in.png", color: const Color(0xFF5874DF)),
                "Transfer In", "06 Jul 2022", 291.51, true),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: _makeHistory(
                Image.asset("assets/images/dribbble_logo.png"), "Dribbble Pro", "06 Jul 2022", 105.55, false),
          ),
        ],
      ),
    );
  }
}

Widget _makeCard(int cardCompany, String exp, double balance, int lastCardNum, Color color) {
  return Container(
    padding: const EdgeInsets.fromLTRB(25, 14, 25, 14),
    width: 250,
    height: 250,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      color: color,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            cardCompany == 0
                ? Image.asset("assets/images/mastercard_logo.png", width: 50, height: 50)
                : Image.asset("assets/images/visa_logo.png", width: 50, height: 50),
            const Spacer(),
            Text(
              "Exp " + exp,
              style: const TextStyle(color: Colors.white, fontSize: 12),
            ),
          ],
        ),
        const SizedBox(height: 25),
        const Text("Balance", style: TextStyle(color: Colors.white, fontSize: 14)),
        const SizedBox(height: 5),
        Text(
          "\$" + balance.toString(),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w800,
          ),
        ),
        const SizedBox(height: 55),
        Text(
          "**** **** **** " + lastCardNum.toString(),
          style: const TextStyle(color: Colors.white, fontSize: 14),
        )
      ],
    ),
  );
}

Widget _makeHistory(Image image, String name, String date, double charge, bool transferIn) {
  return Column(
    children: [
      SizedBox(
        height: 80,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                ),
                child: image,
              ),
            ),
            const SizedBox(width: 30),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    color: Color(0xFF2A2F58),
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  date,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            const Spacer(),
            if (transferIn)
              (Text(
                "+\$" + charge.toString(),
                style: const TextStyle(color: Color(0xFF5874DF), fontWeight: FontWeight.w600),
              )),
            if (!transferIn)
              (Text(
                "-\$" + charge.toString(),
                style: const TextStyle(color: Color(0xFFFF6D5F), fontWeight: FontWeight.w600),
              )),
          ],
        ),
      ),
    ],
  );
}
