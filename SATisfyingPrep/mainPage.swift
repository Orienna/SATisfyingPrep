//
//  mainPage.swift
//  SATisfyingPrep
//
//  Created by Scholar on 7/30/25.
//

import SwiftUI

struct mainPage: View {
  @State var name = ""
  @State var password = ""
  @State private var usernameError = ""
  @State private var passwordError = ""
  @State private var loginSuccess = false
  var body: some View {
    ZStack {
      Color("backgroundPurple").ignoresSafeArea()
      VStack {
        Image("SAT2")
          .resizable(resizingMode: .stretch)
          .aspectRatio(contentMode: .fit)
          .padding(.leading, 150.0)
        ZStack {
          Rectangle()
            .fill(Color.white)
            .cornerRadius(10)
            .ignoresSafeArea()
          NavigationStack {
            VStack {
              Text("User Profile ______________________")
                .font(.title)
                .padding(.bottom, 20)
              // Username Section
              VStack(alignment: .leading) {
                Text("Username:")
                  .font(.title3)
                  .padding()
                TextField("Insert username here", text: $name)
                  .frame(height: 30.0)
                  .border(Color.gray, width: 1)
                  .padding(.horizontal, 22.0)
                if !usernameError.isEmpty {
                  Text(usernameError)
                    .foregroundColor(.red)
                    .font(.caption)
                    .padding(.leading, 22)
                }
              }
              .padding(.bottom, 20)
              // Password Section
              VStack(alignment: .leading) {
                Text("Password:")
                  .font(.title3)
                  .padding()
                SecureField("Insert password here", text: $password)
                  .frame(height: 30.0)
                  .border(Color.gray, width: 1)
                  .padding(.horizontal, 22.0)
                if !passwordError.isEmpty {
                  Text(passwordError)
                    .foregroundColor(.red)
                    .font(.caption)
                    .padding(.leading, 22)
                }
              }
              .padding(.bottom, 30)
              // Submit Button
              Button(action: validateLogin) {
                Text("Submit")
                  .font(.title3)
                  .fontWeight(.medium)
                  .foregroundColor(.white)
                  .frame(width: 100.0, height: 40.0)
                  .background(Color.periWrinkle)
                  .cornerRadius(10)
                  .padding(.top, 20)
              }
              // Navigation on Success
              NavigationLink(destination: buttonSATwork(), isActive: $loginSuccess) {
                EmptyView()
              }
            }
          }
        }
      }
      .padding()
    }
  }
  // Validation Logic
  private func validateLogin() {
    usernameError = ""
    passwordError = ""
    loginSuccess = false
    // Username Validation: 5–20 chars, no spaces
    if name.count < 5 || name.count > 20 || name.contains(" ") {
      usernameError = "Username must be 5–20 characters with no spaces."
    }
    // Password Validation: must contain letters and numbers
    let hasLetter = password.range(of: "[A-Za-z]", options: .regularExpression) != nil
    let hasNumber = password.range(of: "[0-9]", options: .regularExpression) != nil
    if !hasLetter || !hasNumber {
      passwordError = "Password must include both letters and numbers."
    }
    // If both valid, check credentials
    if usernameError.isEmpty && passwordError.isEmpty {
      if name == "HelloWorld" && password == "hi1234" {
        loginSuccess = true
      } else {
        passwordError = "Incorrect username or password."
      }
    }
  }
}
#Preview {
  mainPage()
}









