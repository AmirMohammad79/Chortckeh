import 'package:chortkeh/screens/cards/CardMonthInputFormatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'CardNumberInputFormatter.dart';

class AddNewCardScreen extends StatefulWidget {
  static String id = 'addCard';
   AddNewCardScreen({Key? key}) : super(key: key);

  @override
  State<AddNewCardScreen> createState() => _AddNewCardScreenState();
}

class _AddNewCardScreenState extends State<AddNewCardScreen> {
  TextEditingController cardNumberController = TextEditingController();

  CardType cardType = CardType.Invalid;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text("New card")),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const Spacer(),
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      controller: cardNumberController,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(16),
                        CardNumberInputFormatter()
                      ],
                      decoration: const InputDecoration(hintText: "Card number"),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: TextFormField(
                        decoration:
                        const InputDecoration(hintText: "Full name"),
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                              // Limit the input
                              LengthLimitingTextInputFormatter(4),
                            ],
                            decoration: const InputDecoration(hintText: "CVV"),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                              LengthLimitingTextInputFormatter(4),
                              CardMonthInputFormatter()
                            ],
                            decoration:
                            const InputDecoration(hintText: "MM/YY"),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Spacer(flex: 2),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: ElevatedButton(
                  child: const Text("Add card"),
                  onPressed: () {},
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
enum CardType {
  Master,
  Visa,
  Verve,
  Discover,
  AmericanExpress,
  DinersClub,
  Jcb,
  Others,
  Invalid
}