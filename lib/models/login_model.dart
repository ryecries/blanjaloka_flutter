class LoginResponeModel{
  final String token;
  final String error;
  LoginResponeModel({
    required this.token,
    required this.error});
  factory LoginResponeModel.fromJson(Map<String,dynamic> json){
    return LoginResponeModel(
        token: json['token']!=null?json['token']:"",
        error:json['error']!=null?json['error']:"" );

  }
  Map<String,dynamic> toJson(){
    Map<String,dynamic>map={
      "token":token.trim(),
      "error":error.trim()
    };
    return map;
  }


}
class LoginRequestModel{
  String email;
  String password;
  LoginRequestModel({
    required this.email,
    required this.password});
  Map<String,dynamic> toJson(){
    Map<String,dynamic> map ={
      'email':email.trim(),
      'password':password.trim()
    };
    return map;
  }
}