
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());


  final Dio dio = Dio();
  TextEditingController emailControl =  TextEditingController();
  TextEditingController passwordControl =  TextEditingController();
  Future<void>login() async{
    try{
      emit(LoginLoading());
     final Response response = await dio.post('https://api.escuelajs.co/api/v1/auth/login', data:{
       'email':emailControl.text,
       'password':passwordControl.text

     });
     if(response.statusCode == 200 ||response.statusCode == 201 ){
       emit(LoginSuccess());
     }else{
         emit(LoginFailure("there is an error"));
     }

    }on DioException catch(E){
      emit(LoginFailure(E.message ?? "Dio Exception" ));
    }catch(e){
      emit(LoginFailure(e.toString()));
    }
}

}