import 'package:flutter/cupertino.dart';

class CurrencyConverterCupertinoPage extends StatefulWidget {
  const CurrencyConverterCupertinoPage({super.key});

  @override
  State<CurrencyConverterCupertinoPage> createState() =>
      _CurrencyConverterCupertinoPageState();
}

class _CurrencyConverterCupertinoPageState
    extends State<CurrencyConverterCupertinoPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();
  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Center(
          child: Text(
            "USD",
            style: TextStyle(
              color: CupertinoColors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CupertinoButton(
              padding: EdgeInsets.zero,
              child: const Icon(CupertinoIcons.map),
              onPressed: () {},
            ),
          ],
        ),
        backgroundColor: CupertinoColors.activeGreen,
        leading: const Icon(CupertinoIcons.add_circled),
      ),
      backgroundColor: CupertinoColors.tertiarySystemFill,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 50),
              child: Text(
                'Dz ${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}',

                style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: CupertinoColors.white,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),

              child: CupertinoTextField(
                controller: textEditingController,
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
                style: TextStyle(color: const Color.fromRGBO(0, 0, 0, 1)),
                decoration: BoxDecoration(
                  color: CupertinoColors.white,
                  border: Border.all(),
                  borderRadius: BorderRadius.all(Radius.circular(30))
                ),
                placeholder: "Please enter the amount in USD",
                prefix: const Icon(CupertinoIcons.money_dollar),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
              child: CupertinoButton(
                onPressed: () {
                  setState(() {
                    result = double.parse(textEditingController.text) * 133.32;
                  });
                },
                color: const Color.fromRGBO(227, 226, 226, 1),
                child: const Text("Convert"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
