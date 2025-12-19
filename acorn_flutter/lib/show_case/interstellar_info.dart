import 'package:flutter/material.dart';

class InterstellarInfo extends StatelessWidget {
  const InterstellarInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text('Interstellar Missions Info'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'This view shows the trajectories of five spacecraft that have left or are leaving the heliosphere.',
            ),
            const SizedBox(height: 8),
            const Text(
              'The heliocentric ecliptic coordinates are based on data published by NASA.',
            ),
            const SizedBox(height: 8),
            const Text(
              'The z-axis points toward the north ecliptic pole, so the divergence of the trajectories indicates that each spacecraft heads in a different direction.',
            ),
            const SizedBox(height: 8),
            const Text(
              'Numbers along the trajectories represent the last two digits of the year; the timeline below shows when events occurred.',
            ),
            const SizedBox(height: 8),
            const Text(
              'The concentric circles at the base of the graph indicate planetary orbits; they are only approximate guides based on average planetary distances from the Sun.',
            ),
            const SizedBox(height: 8),
            const Text(
              'When a “closest approach” point appears offset from the drawn orbit, the trajectory coordinates should be regarded as correct.',
            ),
            const SizedBox(height: 8),
            const Text('The sphere represents the approximate heliosphere.'),
            const SizedBox(height: 8),
            const Text('You can rotate the view and zoom in or out.'),
            const SizedBox(height: 24),
            const Text(
              'Timeline',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                columns: const [
                  DataColumn(label: Text('Date')),
                  DataColumn(label: Text('ID')),
                  DataColumn(label: Text('Event')),
                  DataColumn(label: Text('Location')),
                ],
                rows: const [
                  // 以下に上表の各イベントを DataRow として追加します
                  DataRow(cells: [
                    DataCell(Text('1972-03-02')),
                    DataCell(Text('P10')),
                    DataCell(Text('Launch')),
                    DataCell(Text('Cape Canaveral, Florida, USA')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('1972-03-02')),
                    DataCell(Text('P10')),
                    DataCell(Text('Launch')),
                    DataCell(Text('Cape Canaveral, Florida, USA')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('1972-07-15')),
                    DataCell(Text('P10')),
                    DataCell(Text('Entered asteroid belt')),
                    DataCell(Text('Asteroid belt')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('1973-04-06')),
                    DataCell(Text('P11')),
                    DataCell(Text('Launch')),
                    DataCell(Text('Cape Canaveral, Florida, USA')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('1973-12-03')),
                    DataCell(Text('P10')),
                    DataCell(Text('Jupiter closest approach')),
                    DataCell(Text('Jupiter')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('1974-12-03')),
                    DataCell(Text('P11')),
                    DataCell(Text('Jupiter flyby')),
                    DataCell(Text('Jupiter')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('1976-02')),
                    DataCell(Text('P10')),
                    DataCell(Text('Crossed Saturn\'s orbit')),
                    DataCell(Text('Saturn orbit')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('1977-08-20')),
                    DataCell(Text('V2')),
                    DataCell(Text('Launch')),
                    DataCell(Text('Cape Canaveral, Florida, USA')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('1977-09-05')),
                    DataCell(Text('V1')),
                    DataCell(Text('Launch')),
                    DataCell(Text('Cape Canaveral, Florida, USA')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('1979-03-05')),
                    DataCell(Text('V1')),
                    DataCell(Text('Jupiter flyby')),
                    DataCell(Text('Jupiter')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('1979-07-09')),
                    DataCell(Text('V2')),
                    DataCell(Text('Jupiter flyby')),
                    DataCell(Text('Jupiter')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('1979-09-01')),
                    DataCell(Text('P11')),
                    DataCell(Text('Saturn flyby; discovered F ring and new moon')),
                    DataCell(Text('Saturn')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('1980-11-12')),
                    DataCell(Text('V1')),
                    DataCell(Text('Saturn flyby')),
                    DataCell(Text('Saturn')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('1981-08-26')),
                    DataCell(Text('V2')),
                    DataCell(Text('Saturn flyby')),
                    DataCell(Text('Saturn')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('1983-06-13')),
                    DataCell(Text('P10')),
                    DataCell(Text('Crossed Neptune\'s orbit')),
                    DataCell(Text('Neptune orbit')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('1986-01-24')),
                    DataCell(Text('V2')),
                    DataCell(Text('Uranus flyby')),
                    DataCell(Text('Uranus')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('1989-08-25')),
                    DataCell(Text('V2')),
                    DataCell(Text('Neptune flyby')),
                    DataCell(Text('Neptune')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('1990-01-01')),
                    DataCell(Text('V1')),
                    DataCell(Text('Interstellar mission started')),
                    DataCell(Text('Deep space')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('1990-02-23')),
                    DataCell(Text('P11')),
                    DataCell(Text('Crossed Neptune\'s orbit')),
                    DataCell(Text('Neptune orbit')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('1995-09-30')),
                    DataCell(Text('P11')),
                    DataCell(Text('Mission ended; last contact')),
                    DataCell(Text('Deep space')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('1995-11-24')),
                    DataCell(Text('P11')),
                    DataCell(Text('Final engineering data received')),
                    DataCell(Text('Deep space')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('1997-03-31')),
                    DataCell(Text('P10')),
                    DataCell(Text('Routine contact ended')),
                    DataCell(Text('Deep space')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('1998-02-17')),
                    DataCell(Text('V1')),
                    DataCell(Text('Became most distant human-made object')),
                    DataCell(Text('Deep space')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('2002-04-27')),
                    DataCell(Text('P10')),
                    DataCell(Text('Last telemetry received')),
                    DataCell(Text('Deep space')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('2003-01-23')),
                    DataCell(Text('P10')),
                    DataCell(Text('Last signal received')),
                    DataCell(Text('Deep space')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('2004-12-16')),
                    DataCell(Text('V1')),
                    DataCell(Text('Crossed termination shock')),
                    DataCell(Text('Heliosheath')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('2006-01-19')),
                    DataCell(Text('NH')),
                    DataCell(Text('Launch')),
                    DataCell(Text('Cape Canaveral, Florida, USA')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('2006-08-16')),
                    DataCell(Text('V1')),
                    DataCell(Text('Reached 100 AU from the Sun')),
                    DataCell(Text('Deep space')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('2007-02-28')),
                    DataCell(Text('NH')),
                    DataCell(Text('Jupiter gravity assist')),
                    DataCell(Text('Jupiter')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('2007-08-30')),
                    DataCell(Text('V2')),
                    DataCell(Text('Crossed termination shock')),
                    DataCell(Text('Heliosheath')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('2012-08-25')),
                    DataCell(Text('V1')),
                    DataCell(Text('Crossed heliopause')),
                    DataCell(Text('Heliopause')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('2015-07-14')),
                    DataCell(Text('NH')),
                    DataCell(Text('Pluto flyby')),
                    DataCell(Text('Pluto')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('2018-11-05')),
                    DataCell(Text('V2')),
                    DataCell(Text('Crossed heliopause')),
                    DataCell(Text('Heliopause')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('2019-01-01')),
                    DataCell(Text('NH')),
                    DataCell(Text('Arrokoth flyby')),
                    DataCell(Text('Arrokoth')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('2023-07-21')),
                    DataCell(Text('V2')),
                    DataCell(Text('Antenna mispoint due to command error')),
                    DataCell(Text('Deep space')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('2023-08-04')),
                    DataCell(Text('V2')),
                    DataCell(Text('Communications restored')),
                    DataCell(Text('Deep space')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('2023-11-14')),
                    DataCell(Text('V1')),
                    DataCell(Text('Communications stopped due to FDS failure')),
                    DataCell(Text('Deep space')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('2024-04-20')),
                    DataCell(Text('V1')),
                    DataCell(Text('Communications restored after FDS fix')),
                    DataCell(Text('Deep space')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('2024-08-27')),
                    DataCell(Text('V1')),
                    DataCell(Text('Thruster swap completed')),
                    DataCell(Text('Deep space')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('2024-09-26')),
                    DataCell(Text('V2')),
                    DataCell(Text('Plasma science instrument turned off')),
                    DataCell(Text('Deep space')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('2024-10-01')),
                    DataCell(Text('NH')),
                    DataCell(Text('Reached 60 AU from the Sun')),
                    DataCell(Text('Deep space')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('2024-10-24')),
                    DataCell(Text('V1')),
                    DataCell(Text('Communications restored via S‑band')),
                    DataCell(Text('Deep space')),
                  ]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}