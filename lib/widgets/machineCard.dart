import 'package:flutter/material.dart';
import 'package:food_app/utils/constants.dart';

import 'dropDownBocal.dart';
import 'dropDownFood.dart';

class MachineCard extends StatelessWidget {
  final _recipientNameController = TextEditingController();
  final _foodNameController = TextEditingController();

  final int index;
  MachineCard(
    this.index, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        height: 220,
        width: double.maxFinite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(height: 30, width: 30),
            Text(
              "Recipiente: ${this.index + 1}",
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(height: 30, width: 30),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Expanded(
                  child: AccentColorOverride(
                    color: kRapidaoBrown900,
                    child: TextField(
                      controller: _recipientNameController,
                      decoration: InputDecoration(
                        labelText: 'Nome Recipiente',
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30, width: 30),
                DropDownFood(),
                SizedBox(height: 30, width: 30),
                DropDownBocal(),
                SizedBox(width: 30),
                Expanded(
                  child: AccentColorOverride(
                    color: kRapidaoBrown900,
                    child: TextField(
                      controller: _recipientNameController,
                      decoration: InputDecoration(
                        labelText: 'Nome comida',
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30, width: 30),
                Expanded(
                  child: AccentColorOverride(
                    color: kRapidaoBrown900,
                    child: TextField(
                      controller: _recipientNameController,
                      decoration: InputDecoration(
                        labelText: 'Descrição comida',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class AccentColorOverride extends StatelessWidget {
  const AccentColorOverride({Key key, this.color, this.child})
      : super(key: key);

  final Color color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Theme(
      child: child,
      data: Theme.of(context).copyWith(
        accentColor: color,
        brightness: Brightness.dark,
      ),
    );
  }
}
