import 'package:flutter/material.dart';
import 'package:reddit_imitation/themes/main_theme.dart';

enum TypeOfSorting{
  new_,
  rising_,
  controversial_,
  top_,
  guilded_,
  promoted_
}

class DropDownButton extends StatefulWidget{
  const DropDownButton({super.key});

  @override
  State<DropDownButton> createState() {
    return _DropDownMenu();
  }
}

class _DropDownMenu extends State<DropDownButton>{
  final itemMap = {
    TypeOfSorting.new_ : "New",
    TypeOfSorting.rising_ : "Rising",
    TypeOfSorting.controversial_ : "Controversial",
    TypeOfSorting.top_ : "Top",
    TypeOfSorting.guilded_ : "Guilded",
    TypeOfSorting.promoted_ : "Promoted"
  };

  TypeOfSorting _currentSortType = TypeOfSorting.new_;

  void changeSortType(TypeOfSorting? newValue){
    setState(() {
      _currentSortType = newValue ?? TypeOfSorting.new_;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40,
        width: double.infinity,
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.only(left: 28),
        decoration: BoxDecoration(
            color: Theme.of(context).appBarBottomColor,
            boxShadow: const [
              BoxShadow(
                  offset: Offset(0, 5),
                  blurRadius: 5,
                  color: Colors.black38
              )
            ]
        ),
        child: Row(
          children: [
            Text("Filter by "),
            DropdownButton(
              items: itemMap.keys.map((key) =>
                  DropdownMenuItem(
                      value: key,
                      child: Text(itemMap[key]!))).toList(),
              underline: const SizedBox(),
              onChanged: changeSortType,
              value: _currentSortType,
              selectedItemBuilder: (newContext){
                return itemMap.keys.map((key) =>
                    DropdownMenuItem(
                        value: key,
                        child: Text(
                            itemMap[key]!,
                            style: const TextStyle(
                                color: Color.fromRGBO(255, 69, 0, 1),
                                fontWeight: FontWeight.w600
                            )
                        )
                    )).toList();
              },
            ),
          ]
        )
    );
  }
}