//
//  LoginView.swift
//  UserAuthBottles
//
//  Created by Charles B on 7/4/24.
//

import SwiftUI

import Firebase

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var errormessage = ""
    @State private var isLoggedIn = false
    @EnvironmentObject private var vm: LocationsViewModel
    var body: some View {
        
        NavigationStack{
            VStack{
                Image("blue")
                    .resizable()
                    .frame(width: 200, height: 200)
            }
            if isLoggedIn {
                ContentView()
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
                    .padding()
                    .background(Color(.secondarySystemBackground))
                    .cornerRadius(5.0)
                
                Button(action: logIn){
                    Text("Sign In")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundStyle(.black)
                    Image(systemName: "arrow.right")
                }
                
                Text(errormessage)
                
                NavigationLink{
                    SignUpView()
                } label: {
                    Text("Don't have an account?")
                    Text("Sign Up")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                }
                NavigationLink{
                    LocationsView()
                } label: {
                    Text("Make your Hustle 2x")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundStyle(.green)
                    Text("Click here to BEV")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundStyle(.blue)
                }
            }
            
        }

    }
    
    func logIn(){
        Auth.auth().signIn(withEmail: email, password: password) {authResult, error in
            if let error = error{
                errormessage = error.localizedDescription
            } else {
                isLoggedIn = true
            }
        }
    }
}

#Preview {
    LoginView()
}
