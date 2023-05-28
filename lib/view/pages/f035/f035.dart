import 'package:flutter/material.dart';

class F035 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var x = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Colors.teal.shade400,
              child: Table(
                columnWidths: {
                  0: FlexColumnWidth(x * 1.5),
                  1: FlexColumnWidth(x * 0.5),
                  2: FlexColumnWidth(x * 0.5),
                  3: FlexColumnWidth(x * 0.5),
                  4: FlexColumnWidth(x * 0.5),
                },
                border: TableBorder.all(),
                children: [
                  TableRow(
                    children: [
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.fill,
                        child: Container(
                          color: Colors.teal.shade400,
                          child: Column(
                            children: [
                              const Spacer(),
                              TitleText(
                                  title: 'Self-Care',
                                  textAlign: TextAlign.center),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            TitleText(
                                title: 'Admission\n',
                                textAlign: TextAlign.center),
                            Container(
                              width: double.infinity,
                              height: 1.5,
                              decoration: const BoxDecoration(
                                color: Colors.black,
                              ),
                            ),
                            TitleText(
                                title: 'Date:', textAlign: TextAlign.start),
                          ],
                        ),
                      ),
                      TableCell(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            TitleText(
                                title: 'Re-\nassessment',
                                textAlign: TextAlign.center),
                            Container(
                              width: double.infinity,
                              height: 1.5,
                              decoration: const BoxDecoration(
                                color: Colors.black,
                              ),
                            ),
                            TitleText(
                                title: 'Date:', textAlign: TextAlign.start),
                          ],
                        ),
                      ),
                      TableCell(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            TitleText(
                                title: 'Admission',
                                textAlign: TextAlign.center),
                            Container(
                              width: double.infinity,
                              height: 1.5,
                              decoration: const BoxDecoration(
                                color: Colors.black,
                              ),
                            ),
                            TitleText(
                                title: 'Date:', textAlign: TextAlign.start),
                          ],
                        ),
                      ),
                      TableCell(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            TitleText(
                                title: 'Admission',
                                textAlign: TextAlign.center),
                            Container(
                              width: double.infinity,
                              height: 1.5,
                              decoration: const BoxDecoration(
                                color: Colors.black,
                              ),
                            ),
                            TitleText(
                                title: 'Date:', textAlign: TextAlign.start),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Table(
              columnWidths: {
                0: FlexColumnWidth(x * 1),
                1: FlexColumnWidth(x * 11),
                2: FlexColumnWidth(x * 4),
                3: FlexColumnWidth(x * 4),
                4: FlexColumnWidth(x * 4),
                5: FlexColumnWidth(x * 4),
              },
              border: TableBorder.all(),
              children: const [
                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            '1.',
                            maxLines: 1,
                          ),
                        ),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Text('Eating'),
                        ),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(''),
                        ),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(''),
                        ),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(''),
                        ),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(''),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget TitleText({required String title, required TextAlign textAlign}) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      color: Colors.teal.shade400,
      child: Text(
        title,
        overflow: TextOverflow.ellipsis,
        textAlign: textAlign,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }

  TableRow buildRowWidget({
    required DateTime dateTime,
    required TextEditingController controller,
    required String signature,
  }) {
    return TableRow(children: [
      Text(
        '${dateTime}',
        textAlign: TextAlign.center,
        style:
            const TextStyle(fontWeight: FontWeight.bold, color: Colors.black87),
      ),
      TextFormField(
        controller: controller,
      ),
      Text(
        signature,
        textAlign: TextAlign.center,
        style:
            const TextStyle(fontWeight: FontWeight.bold, color: Colors.black87),
      ),
    ]);
  }
}
