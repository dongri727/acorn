import 'package:flutter/material.dart';

class CassiniInfo extends StatelessWidget {
  const CassiniInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text('Cassini–Huygens Info'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'This view shows the Cassini–Huygens trajectory visualized in three dimensions.',
            ),
            const SizedBox(height: 8),
            const Text(
              'The heliocentric ecliptic coordinates are based on data published by NASA.',
            ),
            const SizedBox(height: 8),
            const Text(
              'The z-axis, however, represents Julian Day. The rising path of the trajectory expresses the passage of time.',
            ),
            const SizedBox(height: 8),
            const Text(
              'The concentric circles at the base of the graph indicate planetary orbits, but they are only approximate guides based on each planet\'s average distance from the Sun.',
            ),
            const SizedBox(height: 8),
            const Text(
              'When a "closest approach" point appears to be offset from the drawn orbit, please regard the trajectory coordinates as the correct ones.',
            ),
            const SizedBox(height: 8),
            const Text(
              'You can rotate the view and zoom in or out.',
            ),
            const SizedBox(height: 24),
            const Text(
              'Timeline',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                columns: const [
                  DataColumn(label: Text('Date')),
                  DataColumn(label: Text('Event')),
                  DataColumn(label: Text('Location')),
                ],
                rows: const [
                  DataRow(cells: [
                    DataCell(Text('1997-10-15')),
                    DataCell(Text('Launch')),
                    DataCell(Text('Cape Canaveral Air Force Station, USA')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('1998-04-26')),
                    DataCell(Text('Gravity-assist flyby')),
                    DataCell(Text('Venus')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('1999-06-24')),
                    DataCell(Text('Gravity-assist flyby')),
                    DataCell(Text('Venus')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('1999-08-18')),
                    DataCell(Text('Gravity-assist flyby')),
                    DataCell(Text('Earth')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('2000-01-23')),
                    DataCell(Text('Close approach and imaging of asteroid (2685) Masursky')),
                    DataCell(Text('Asteroid belt')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('2000-12-30')),
                    DataCell(Text('Gravity-assist flyby')),
                    DataCell(Text('Jupiter')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('2004-06-16')),
                    DataCell(Text('38-second main engine burn for Saturn orbit insertion deceleration')),
                    DataCell(Text('Saturn system')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('2004-06-30')),
                    DataCell(Text('Enters orbit around Saturn')),
                    DataCell(Text('Saturn')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('2004-09-09')),
                    DataCell(Text('Discovers two moons and one new ring')),
                    DataCell(Text('Saturn')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('2004-09-21')),
                    DataCell(Text('Discovers two additional moons')),
                    DataCell(Text('Saturn')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('2004-12-24')),
                    DataCell(Text('Releases the Huygens probe')),
                    DataCell(Text('Saturn system')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('2005-01-14')),
                    DataCell(Text('Huygens lands on Titan, transmits data, and ceases operation after about 3 hours 40 minutes')),
                    DataCell(Text('Titan')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('2013-04-29')),
                    DataCell(Text('Observes an atmospheric vortex at Saturn\'s north pole')),
                    DataCell(Text('Saturn')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('2013-07-19')),
                    DataCell(Text('"The Day the Earth Smiled" global imaging campaign')),
                    DataCell(Text('Saturn')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('2017-04-26')),
                    DataCell(Text('Performs a dive between Saturn and its rings (Grand Finale orbit)')),
                    DataCell(Text('Saturn')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('2017-09-15')),
                    DataCell(Text('Enters Saturn\'s atmosphere; end of mission')),
                    DataCell(Text('Saturn')),
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
