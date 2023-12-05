import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CicularChart extends StatefulWidget {
   CicularChart({super.key,required this.Grap});
   List<GDP>Grap;

  @override
  State<CicularChart> createState() => _CicularChartState();
}

class _CicularChartState extends State<CicularChart> {

  @override
  void initState() {
    widget.Grap=getchartdata();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SfCircularChart(
          series: [
            PieSeries<GDP, String>(
              dataSource:widget.Grap,
              xValueMapper: (GDP data, _) => data.continant,
              yValueMapper: (GDP data, _) => data.gdp,
            )
          ],
        ),
      ),
    );
  }

  List<GDP>getchartdata(){
    final List<GDP> chartdata=[
      GDP('Bangladesh',20),
      GDP('India',20),
      GDP('Bhutan',15),
      GDP('Srilanka',13),
      GDP('Pakistan',16),
      GDP('Nepal',9),
    ];
    return chartdata;
  }
}

class GDP{
  final String continant;
  final int gdp;
  const GDP(this.continant,this.gdp);
}