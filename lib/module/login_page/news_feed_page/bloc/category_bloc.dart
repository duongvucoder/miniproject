import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mini_project_newfeed/model/item.dart';

class CategoryCubit extends Cubit<CategoryState> {
  CategoryCubit() : super(CategoryInitSate());
  final items = Item.newFeedItem();

  void createListCategory() async {
    try {
      emit(CategoryGettingState());
      print('ok');

//tao du lieu
      await Future.delayed(const Duration(seconds: 5));
      if (items.isEmpty) {
        items;
      }
      //phat tin hieu toi UI lay du lieu thanh cong
      emit(CategoryGetSuccessState());
    } catch (e) {
      //phat tin hieu toi UI lay du lieu that bai
      emit(CategoryGetFailState());
    }
  }
}

class CategoryState {}

class CategoryInitSate extends CategoryState {}

class CategoryGetFailState extends CategoryState {}

class CategoryGettingState extends CategoryState {}

class CategoryGetSuccessState extends CategoryState {}
