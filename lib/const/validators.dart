
//email validators with null check and regex
String? isEmailValid(String? email) {
  if(nullCheck(data: email,field: "Email")!=null){
    return nullCheck(data: email,field: "Email");
  }
  // Regular expression for email validation
  String emailRegex =
      r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
  RegExp regExp = RegExp(emailRegex);
  if(!regExp.hasMatch(email!)){
    return "Email is not valid";
  }
  return null;
}
//password validator
String? isPasswordValid(String? password) {
  if(nullCheck(data: password,field: "Password")!=null){
    return nullCheck(data: password,field: "Password");
  }
  if((password?.length??0)<6)
    {
      return "Password must have minimum 6 digits";
    }return null;

/*
  //todo: uncomment this code if needs to apply below rules on password
  // Password validation rules
  // At least 8 characters
  // At least one uppercase letter
  // At least one lowercase letter
  // At least one digit
  // At least one special character
String passwordRegex =
      r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$';
  RegExp regExp = RegExp(passwordRegex);
  if(!regExp.hasMatch(password!)){
    return "Password is not valid";
  }
  return null;*/
}

//common null check function
String? nullCheck({required String field,required String? data}){
  if(data!=null&&data.isNotEmpty){
    return null;
  }else{
    return "$field cannot be an empty";
  }
}

