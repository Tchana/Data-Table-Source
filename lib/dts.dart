import 'package:flutter/material.dart';
import 'package:paginated_data_table_tut/pdt_widget.dart';

class DTS extends DataTableSource{
  @override
  DataRow getRow(int index) {
    return DataRow(
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
              Icon(Icons.more_vert),
              showEditIcon: false,
              placeholder: false,
            ),
          ],
        );
  }

  @override
  // TODO: implement isRowCountApproximate
  bool get isRowCountApproximate => true;

  @override
  // TODO: implement rowCount
  int get rowCount => 100;

  @override
  // TODO: implement selectedRowCount
  int get selectedRowCount => 0;
  
}