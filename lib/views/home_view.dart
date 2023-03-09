import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_app/viewmodels/home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, viewModel, child) => Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            viewModel.updateCounter();
          },
        ),
        body: Center(
          child: Text("${viewModel.counter}"),
        ),
      ),
    );
  }
}
