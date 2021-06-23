import '../../core/components/text/bold_text.dart';
import '../../feature/home/model/home_model.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class ItemCard extends StatefulWidget {
  final HomeModel viewModel;
  const ItemCard({Key? key, required this.viewModel}) : super(key: key);

  @override
  _ItemCardState createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  late final HomeModel model;
  bool isIncrementOpen = false;
  double get getHeight => isIncrementOpen ? context.dynamicHeight(0.12) : 0;
  double get getWidth => isIncrementOpen ? context.dynamicHeight(0.05) : 0;

  @override
  void initState() {
    super.initState();
    model = widget.viewModel;
  }

  void isIncrementChange() {
    setState(() {
      isIncrementOpen = !isIncrementOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Stack(
      children: [
        _buildListTile(context),
        Positioned(
          right: 0,
          child: _buildCardShopIncrement(context),
        )
      ],
    ));
  }

  ListTile _buildListTile(BuildContext context) {
    return ListTile(
      contentPadding: context.paddingLow,
      title: _buildListTileTitle(context),
      subtitle: _buildListTileSubtitle(context),
    );
  }

  Padding _buildListTileTitle(BuildContext context) => Padding(
        padding: context.horizontalPaddingLow,
        child: Image.network(
          model.image ?? "",
          width: context.dynamicWidth(0.2),
          height: context.dynamicHeight(0.1),
        ),
      );

  Column _buildListTileSubtitle(BuildContext context) => Column(
        children: [
          context.emptySizedHeightBoxLow,
          Text(
            model.title ?? "",
            maxLines: 2,
          ),
          BoldText(
            data: "Price: ${model.price.toString()}\$",
          ),
          IconButton(
            onPressed: isIncrementChange,
            icon: Icon(Icons.shopping_bag),
          )
        ],
      );

  AnimatedContainer _buildCardShopIncrement(BuildContext context) =>
      AnimatedContainer(
        duration: context.durationLow,
        height: getHeight,
        width: getWidth,
        child: Card(
          elevation: 10,
          color: context.colorScheme.primary,
          child: Column(
            children: [
              Expanded(
                flex: 4,
                child: _buildIconButtonIncrement(),
              ),
              Spacer(),
              Expanded(
                flex: 4,
                child: _buildIconButtonRemove(),
              ),
            ],
          ),
        ),
      );

  IconButton _buildIconButtonIncrement() => IconButton(
        padding: EdgeInsets.zero,
        onPressed: () {},
        icon: Icon(Icons.add),
      );

  IconButton _buildIconButtonRemove() {
    return IconButton(
      padding: EdgeInsets.zero,
      onPressed: () {},
      icon: Icon(Icons.remove),
    );
  }
}
