import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Cubit for managing the selected radio button state
class RadioSelectionCubit extends Cubit<int> {
  RadioSelectionCubit() : super(0);

  void selectRadio(int index) {
    if (index != state) {
      emit(index);
    }
  }
}

// Reusable widget for the radio button tile
class RadioOptionTile extends StatelessWidget {
  final String title;
  final int value;
  final int groupValue;
  final ValueChanged<int?> onChanged;

  const RadioOptionTile({
    Key? key,
    required this.title,
    required this.value,
    required this.groupValue,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RadioListTile<int>(
      title: Text(title),
      value: value,
      groupValue: groupValue,
      onChanged: onChanged,
    );
  }
}

// Main widget
class RadioSelectionScreen extends StatelessWidget {
  final List<String> radioOptions =
      List.generate(20, (index) => 'Option ${index + 1}');

  RadioSelectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RadioSelectionCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Radio Buttons'),
        ),
        body: Center(
          child: BlocBuilder<RadioSelectionCubit, int>(
            builder: (context, selectedRadioIndex) {
              return ListView.builder(
                itemCount: radioOptions.length,
                itemBuilder: (context, index) {
                  return RadioOptionTile(
                    title: radioOptions[index],
                    value: index,
                    groupValue: selectedRadioIndex,
                    onChanged: (value) {
                      context.read<RadioSelectionCubit>().selectRadio(value!);
                    },
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}


