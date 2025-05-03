//
//  CreateAccountView.swift
//  FireBaseAuthanticationSwiftUI
//
//  Created by ToqSoft on 03/05/25.
//

import SwiftUI

struct CreateAccountView: View {
    @State private var email : String = ""
    @State private var fullName : String = ""
    @State  private var password : String = ""
    @State private var cPassword : String = ""
    var body: some View {
        VStack(spacing: 16) {
            Text("Please complete all information to create an account.")
                .font(.headline).fontWeight(.medium)
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
                .padding(.vertical)
            
            TextFieldViews
            
            Spacer()
            
            Button {
                
            } label: {
                Text("Create Account")
                
            }
            .buttonStyle(CapsuleButtonStyle(bgColor: .teal,textColor: .white))
            .toolbarRole(.editor)
            .padding()
            
        }
        .navigationTitle("Set up your account")
        .padding()
        
     
        
    }
    
   
    private var TextFieldViews : some View{
        
        var isValidPassword : Bool {
            cPassword == password
            
        }
        
        return VStack{
            InputView(
                placeholder: "Email or Phone Number ",
                text: $email
            )
            
            InputView(
                placeholder: "Full Name",
                text: $fullName
            )
            
            InputView(
                placeholder: "Password",
                isSecureField: true,
                text: $password
            )
            
            ZStack(alignment: .trailing) {
                InputView(
                    placeholder: "Confirm your Password",
                    isSecureField: true,
                    text: $cPassword
                )
                Spacer()
                
                if !password.isEmpty && !cPassword.isEmpty {
                    Image(systemName: "\(isValidPassword ? "checkmark" : "xmark").circle.fill")
                        .imageScale(.large)
                        .fontWeight(.bold)
                        .foregroundColor(isValidPassword ? Color(.systemGreen) : Color(.systemRed))
                    
                }
            }
            
        }
    }
}

#Preview {
    CreateAccountView()
}
