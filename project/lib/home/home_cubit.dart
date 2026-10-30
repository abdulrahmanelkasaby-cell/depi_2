import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());


  final cloud = FirebaseFirestore.instance;


  final String collectionName = 'students';


  final nameControl = TextEditingController();
  final ageControl = TextEditingController();
  final gradeControl = TextEditingController();


  Future<void> getStudentsFromServer() async {
    emit(HomeLoading());
    try {
      final response = await cloud.collection(collectionName).get();
      emit(GetStudentSuccess(response.docs));
    } catch (e) {
      emit(HomeFailure(e.toString()));
    }
  }

  Future<void> addStudentToServer() async {
    emit(HomeLoading());
    try {
      await cloud.collection(collectionName).add({
        'name': nameControl.text,
        'age': ageControl.text,
        'grade': gradeControl.text,
      });
      emit(AddStudentSuccess());
    } catch (E) {
      emit(HomeFailure(E.toString()));
    }
  }

  Future<void> updateStudent(String id) async {
    emit(HomeLoading());
    try {
      await cloud.collection(collectionName).doc(id).update({
        'name': nameControl.text,
        'age': ageControl.text,
        'grade': gradeControl.text,
      });
      emit(UpdateStudentSuccess());
    } catch (E) {
      emit(HomeFailure(E.toString()));
    }
  }

  Future<void> deleteStudents(String id) async {
    emit(HomeLoading());
    try {
      await cloud.collection(collectionName).doc(id).delete();
      emit(DeleteStudentSuccess());
    } catch (e) {
      emit(HomeFailure(e.toString()));
    }
  }
  @override
  Future<void> close() {
    nameControl.dispose();
    ageControl.dispose();
    gradeControl.dispose();
    return super.close();
  }
}