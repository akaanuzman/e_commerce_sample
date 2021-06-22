import '../../core/components/text/bold_text.dart';
import '../../feature/home/model/home_model.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class ItemCard extends StatefulWidget {
  final HomeModel model;
  const ItemCard({Key? key, required this.model}) : super(key: key);

  @override
  _ItemCardState createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  bool isIncrementOpen = false;

  void isIncrementChange() {
    setState(() {
      isIncrementOpen = !isIncrementOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child:  Stack(
          children: [
            ListTile(
              contentPadding: context.paddingLow,
              title: Padding(
                padding: context.horizontalPaddingLow,
                child: Image.network(
                  widget.model.image ?? "",
                  width: context.dynamicWidth(0.2),
                  height: context.dynamicHeight(0.1),
                ),
              ),
              subtitle: Column(
                children: [
                  context.emptySizedHeightBoxLow,
                  Text(
                    widget.model.title ?? "",
                    maxLines: 2,
                  ),
                  BoldText(
                    data: "Price: ${widget.model.price.toString()}\$",
                  ),
                  IconButton(
                    onPressed: isIncrementChange,
                    icon: Icon(Icons.shopping_bag),
                  )
                ],
              ),
            ),
            Positioned(
              right: 0,
              child: AnimatedContainer(
                duration: context.durationLow,
                height: isIncrementOpen ? context.dynamicHeight(0.125) : 0,
                width: isIncrementOpen ? context.dynamicHeight(0.05) : 0,
                child: Card(
                  elevation: 10,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 4,
                        child:
                            IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                      ),
                      Spacer(),
                      Expanded(
                        flex: 4,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.remove),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        )
    );
  }
}
