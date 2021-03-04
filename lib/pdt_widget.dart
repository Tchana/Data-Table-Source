import 'package:flutter/material.dart';
import 'package:paginated_data_table_tut/dts.dart';
import 'package:paginated_data_table_tut/main.dart';

class Episode5 extends StatefulWidget {
  @override
  _Episode5State createState() => _Episode5State();
}

class _Episode5State extends State<Episode5> {
  var dts = DTS();
  int _rowsPerPage = PaginatedDataTable.defaultRowsPerPage;

  Widget bodyData() => SingleChildScrollView(
    child: PaginatedDataTable(
          onSelectAll: (b) {},
          sortColumnIndex: 0,
          sortAscending: true,
          columns: <DataColumn>[
            DataColumn(
              label: Text('Name'),
              numeric: false,
              onSort: (i, b) {
                setState(() {
                  users.sort((a, b) => a.name.compareTo(b.name));
                });
              },
              tooltip: "To display the username",
            ),
            DataColumn(
              label: Text('Phone Number'),
              numeric: false,
              onSort: (i, b) {},
              tooltip: "To display the user phone number",
            ),
            DataColumn(
              label: Text('Email'),
              numeric: false,
              onSort: (i, b) {},
              tooltip: "To display the user email",
            ),
            DataColumn(
              label: Text('Group'),
              numeric: false,
              onSort: (i, b) {},
              tooltip: "To display the user group",
            ),
            DataColumn(
              label: Text('Address'),
              numeric: false,
              onSort: (i, b) {},
              tooltip: "To display the user address",
            ),
            DataColumn(
              label: Text('Actions'),
              numeric: false,
              onSort: (i, b) {},
              tooltip: "To display the actions",
            ),
          ],
          // rows: users
          //     .map(
          //       (user) => DataRow(
          //         cells: [
          //           DataCell(
          //             Text(user.name),
          //             showEditIcon: false,
          //             placeholder: false,
          //           ),
          //           DataCell(
          //             Text(user.phone),
          //             showEditIcon: false,
          //             placeholder: false,
          //           ),
          //           DataCell(
          //             Text(user.email),
          //             showEditIcon: false,
          //             placeholder: false,
          //           ),
          //           DataCell(
          //             Text(user.group),
          //             showEditIcon: false,
          //             placeholder: false,
          //           ),
          //           DataCell(
          //             Text(user.address),
          //             showEditIcon: false,
          //             placeholder: false,
          //           ),
          //           DataCell(
          //             Icon(Icons.more_vert),
          //             showEditIcon: false,
          //             placeholder: false,
          //           ),
          //         ],
          //       ),
          //     )
          //     .toList(),
      source: dts,
      onRowsPerPageChanged: (r){
            setState(() {
              _rowsPerPage = r;
            });
      },
      rowsPerPage: _rowsPerPage,
        ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Episode 5 - Data Table'),
      ),
      body: Container(
        child: bodyData(),
      ),
    );
  }
}

var users = <User>[
  User(
      name: "Tchana",
      phone: "654881545",
      address: "sandpit",
      email: "tchana@gmail.com",
      group: "Melancholic"),
  User(
      name: "Ndak",
      phone: "645655415",
      address: "molyko",
      email: "ndak@gmail.com",
      group: "sanguin"),
  User(
      name: "Baba",
      phone: "633584445",
      address: "melen",
      email: "baba@gmail.com",
      group: "choleric"),
  User(
      name: "Bob",
      phone: "66849545",
      address: "mokolo",
      email: "bob@gmail.com",
      group: "flegmatic"),
  User(
      name: "Blaise",
      phone: "654849848",
      address: "obili",
      email: "blaise@gmail.com",
      group: "sanguin"),
  User(
      name: "Yohan",
      phone: "614725839",
      address: "évéché",
      email: "yohan",
      group: "flegmatic"),
  User(
      name: "Yan",
      phone: "698787985",
      address: "eligeffa",
      email: "yvan@gmail.com",
      group: "choleric"),
  User(
      name: "Yves",
      phone: "654881845",
      address: "messassi",
      email: "yves@gmail.com",
      group: "choleric"),
  User(
      name: "wilfried",
      phone: "644444568",
      address: "odja",
      email: "wilfried@gmail.com",
      group: "melancholic"),
  User(
      name: "sam",
      phone: "681258961",
      address: "bonaberi",
      email: "sam@gmail.com",
      group: "sanguin"),
  User(
      name: "sorelle",
      phone: "689878895",
      address: "bokwai",
      email: "sorelle@gmail.com",
      group: "sanguin"),
  User(
      name: "sandrine",
      phone: "654881545",
      address: "town",
      email: "sandrine@gmail.com",
      group: "choleric"),
  User(
      name: "emmanuella",
      phone: "654881545",
      address: "bonanjo",
      email: "emmanuella@gmail.com",
      group: "choleric"),
  User(
      name: "leslie",
      phone: "654881545",
      address: "mile 16",
      email: "leslie",
      group: "flegmatic"),
  User(
      name: "melani",
      phone: "654881545",
      address: "olembe",
      email: "melani@gmail.com",
      group: "flegmatic"),
  User(
      name: "audrey",
      phone: "654881545",
      address: "tamdja",
      email: "audrey@gmail.com",
      group: "melancholic"),
  User(
      name: "laeticia",
      phone: "654881545",
      address: "obala",
      email: "laeticia@gmail.com",
      group: "melancholic"),
  User(
      name: "kelly",
      phone: "654881545",
      address: "stade",
      email: "kelly@gmail.com",
      group: "sanguin"),
  User(
      name: "Brady",
      phone: "654881545",
      address: "carrefour kameni",
      email: "brady@gmail.com",
      group: "sanguin"),
  User(
      name: "Arnold",
      phone: "654881545",
      address: "feu rouge",
      email: "ary@gmail.com",
      group: "choleric"),
];
