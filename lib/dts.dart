import 'package:flutter/material.dart';
import 'package:paginated_data_table_tut/pdt_widget.dart';

import 'pdt_widget.dart';

class DTS extends DataTableSource {
  static const _popItems = <String>[
    "Add to Group",
    "Edit Client",
    "Delete Client"
  ];
  static List<PopupMenuItem<String>> _pop = _popItems.map((String val)=>
    PopupMenuItem<String>(
      value: val,
      child: Text(val),
    )
  ).toList();
  String value;

  Episode5 episode5 = Episode5();
  @override
  DataRow getRow(int index) {
    return DataRow.byIndex(
      index: index,
      cells: [
        DataCell(
          Text(users[index].name),
          showEditIcon: false,
          placeholder: false,
        ),
        DataCell(
          Text(users[index].phone),
          showEditIcon: false,
          placeholder: false,
        ),
        DataCell(
          Text(users[index].email),
          showEditIcon: false,
          placeholder: false,
        ),
        DataCell(
          Text(users[index].group),
          showEditIcon: false,
          placeholder: false,
        ),
        DataCell(
          Text(users[index].address),
          showEditIcon: false,
          placeholder: false,
        ),
        DataCell(
          Align(
            alignment: Alignment.centerRight,
            child: PopupMenuButton(
              onSelected: (String val){
                value = val;
              },
              itemBuilder: (BuildContext context)=>_pop,
            ),
          ),
          showEditIcon: false,
          placeholder: false,
        ),
      ],
    );
  }

  @override
  // TODO: implement isRowCountApproximate
  bool get isRowCountApproximate => false;

  @override
  // TODO: implement rowCount
  int get rowCount => users.length;

  @override
  // TODO: implement selectedRowCount
  int get selectedRowCount => 0;
}