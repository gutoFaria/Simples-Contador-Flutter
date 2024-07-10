import 'package:flutter/material.dart';

class HistoryWidget extends StatefulWidget {
  const HistoryWidget({super.key, required this.increaseHistory});

  final List<int> increaseHistory;

  @override
  State<HistoryWidget> createState() => _HistoryWidgetState();
}

class _HistoryWidgetState extends State<HistoryWidget> {
  late ListView list = buildList();

  ListView buildList(){
    return ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: widget.increaseHistory.length,
                separatorBuilder: (_, __){
                  return const SizedBox(width: 10,);
                },
                itemBuilder: (_, index){
                  return Text('${widget.increaseHistory[index]}');
                });
  }

  @override
  void didUpdateWidget(covariant HistoryWidget oldWidget) {

    super.didUpdateWidget(oldWidget);

    if(widget.increaseHistory.length != oldWidget.increaseHistory.length){
      list = buildList();
    }
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text('Contador'),
        SizedBox(
          height: 40,
          child: list,
        )
      ],
    );
  }
}