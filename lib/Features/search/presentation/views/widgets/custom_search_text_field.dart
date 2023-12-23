import 'package:bookly_app/Features/search/presentation/view_model/search_cubit/search_cubit_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  
  @override
  Widget build(BuildContext context) {
    final searchCubit = context.read<SearchCubit>();
    
    return TextField(
      controller: searchCubit.controller,
      decoration: InputDecoration(
        
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
        hintText: 'Search..... (By Category)',
        suffixIcon: IconButton(
          onPressed: () {
            searchCubit.search(searchCubit.controller.text);
          },
          icon: const Opacity(
            opacity: .8,
            child:  Icon(FontAwesomeIcons.magnifyingGlass , size: 22,)
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(
        color: Colors.white,
      ),
      borderRadius: BorderRadius.circular(
        12,
      ),
    );
  }
}