String? validateremail(email) {
  if (email == null || email.isEmpty) {
    return "Email is required";
  }

  if (!email.contains("@")) {
    return "Enter a valid email";
  }

  if (email.length < 5) {
    return "Please Enter at least 5 characters ";
  }

  return null;
}

String? validatorPassword(password) {
  if (password == null || password.isEmpty) {
    return "Password is required ";
  }
  if (password.length < 8) {
    return "Please Enter at least 8 characters";
  }
  return null;
}

String? validatorUsername(username) {
  if (username == null || username.isEmpty) {
    return "Username is required";
  }

  if (username.length < 5) {
    return "Please Enter at least 5 characters ";
  }

  return null;
}
