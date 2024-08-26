import 'package:flutter/material.dart';
import 'package:network_app/views/widgets/custom_status_point.dart';

class CustomTable extends StatelessWidget {
  const CustomTable({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: DataTable(columnSpacing: 16, columns: const [
        DataColumn(label: Expanded(child: Text('Link'))),
        DataColumn(label: Text('Ping')),
        DataColumn(label: Text('wget')),
        DataColumn(label: Text('Delete')),
      ], rows: [
        DataRow(
          cells: [
            const DataCell(Expanded(
                // width: MediaQuery.of(context).size.width * 0.48,
                child: Text(
              'https://www.google.com/fdsfs',
              overflow: TextOverflow.ellipsis,
            ))),
            const DataCell(Expanded(child: CustomStatusPoint())),
            const DataCell(Expanded(child: CustomStatusPoint())),
            DataCell(
              IconButton(
                  icon: Icon(
                    Icons.delete,
                    color: Colors.red[800],
                  ),
                  onPressed: () {}),
            ),
          ],
        ),
        // DataRow(
        //   cells: [
        //     DataCell(SizedBox(
        //         width: MediaQuery.of(context).size.width * 0.45,
        //         child: const Text('https://www.google.com/'))),
        //     const DataCell(Center(child: CustomStatusPoint())),
        //     const DataCell(CustomStatusPoint()),
        //     DataCell(
        //       IconButton(
        //           icon: Icon(
        //             Icons.delete,
        //             color: Colors.red[800],
        //           ),
        //           onPressed: () {}),
        //     ),
        //   ],
        // ),
      ]),
    );
  }
}
