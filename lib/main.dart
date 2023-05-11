import 'package:flutter/material.dart';
import 'package:flutter_wallet_dapp/widgets/button.dart';
import 'package:flutter_wallet_dapp/widgets/card.dart';

void main() {
  runApp(const App());
}

// stl
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 구글 디자인
      home: Scaffold(
        backgroundColor: Colors.cyan,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(Icons.menu, size: 40, color: Colors.white),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text("Hey, min49590",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w800,
                            )),
                        Text(
                          "Welcome back!",
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.7),
                            fontSize: 18,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  "Total Balance",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white.withOpacity(0.8),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "\$5,194,482",
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Button(
                        text: "Transfer",
                        bgColor: Colors.amber,
                        textColor: Colors.white),
                    Button(
                        text: "Request",
                        bgColor: Colors.black,
                        textColor: Colors.white),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Wallets",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text("View All",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                        )),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    const MyCard(
                      name1: "Euro",
                      name2: "EUR",
                      icon: Icons.euro_sharp,
                      isInverted: false,
                    ),
                    Transform.translate(
                      offset: const Offset(0, -20),
                      child: const MyCard(
                        name1: "Dollar",
                        name2: "USD",
                        icon: Icons.attach_money_sharp,
                        isInverted: true,
                      ),
                    ),
                    Transform.translate(
                      offset: const Offset(0, -40),
                      child: const MyCard(
                        name1: "원화",
                        name2: "원",
                        icon: Icons.money_off,
                        isInverted: false,
                      ),
                    ),
                    Transform.translate(
                      offset: const Offset(0, -60),
                      child: const MyCard(
                        name1: "Bitcoin",
                        name2: "BTC",
                        icon: Icons.currency_bitcoin_sharp,
                        isInverted: true,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
