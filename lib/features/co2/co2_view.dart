import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_earth_api/core/bloc/co2/co2_bloc.dart';
import 'package:flutter_earth_api/core/models/co2.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CO2View extends StatefulWidget {
  const CO2View({Key? key}) : super(key: key);

  @override
  State<CO2View> createState() => _CO2ViewState();
}

class _CO2ViewState extends State<CO2View> {
  late TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    context.read<Co2Bloc>().add(FetchCO2YearlyEvent());
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Co2Bloc, Co2State>(
      builder: (context, state) {
        if (state.status.isSuccess) {
          if ((state.data ?? []).isNotEmpty) {
            return Container(
                child: SfCartesianChart(
                    primaryXAxis: CategoryAxis(),
                    title: ChartTitle(text: "CO2 on Earth Yearly"),
                    // legend: Legend(isVisible: true),
                    tooltipBehavior: _tooltipBehavior,
                    series: <LineSeries<CO2Model, String>>[
                  LineSeries<CO2Model, String>(
                    dataSource: state.data!,
                    xValueMapper: (CO2Model data, _) => data.date,
                    yValueMapper: (CO2Model data, _) =>
                        double.parse(data.mean!),
                    dataLabelSettings: const DataLabelSettings(isVisible: true),
                  )
                ]));
          } else {
            return const Center(child: Text("No item in the list"));
          }
        }
        return const Center(
          child: Text("Error"),
        );
      },
    );
  }
}
