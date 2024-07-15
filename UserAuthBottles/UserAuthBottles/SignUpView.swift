//
//  SignUpView.swift
//  UserAuthBottles
//
//  Created by Charles B on 7/4/24.
//

import SwiftUI
import Firebase

struct SignUpView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var errormessage = ""
    @State private var signUpSuccessfull = false
    @EnvironmentObject private var vm: LocationsViewModel
    var body: some View {
        NavigationStack{
            VStack{
                Image("blue")
                    .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 100, height: 100, alignment: .topLeading)
            }
            if signUpSuccessfull {
                LoginView()
            } else {
                Text("Sign Up")
                    .font(.title)
                    .padding()
                Text("Email Address")
                TextField("Email Address", text: $email)
                    .padding()
                    .background(Color(.secondarySystemBackground))
                    .cornerRadius(5.0)
                Text("Password")
                SecureField("**********", text: $password)
                
                Button(action: signUp){
                    Text("Sign Up")
                    Image(systemName: "arrow.right")
                }
                
                Text(errormessage)
                
                NavigationLink{
                    LoginView()
                } label: {
                    Text("Already have an account?")
                    Text("Sign In")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                }
            }
        }
    }
    func signUp(){
        Auth.auth().createUser(withEmail: email, password: password) {authResult, error in
            if let error = error{
                errormessage = error.localizedDescription
            } else {
                signUpSuccessfull = true
                if let user = authResult?.user{
                    let db = Firestore.firestore()
                    db.collection("users").document(user.uid).setData(["email":user.email ?? " ", "uid": user.uid]) { error in
                        if error != nil {
                            errormessage = " Error Saving user"
                        } else {
                            errormessage = "User Signed Up Successfully"
                        }
                    }
                }
            }
        }
    }
}
#Preview {
    SignUpView()
}
