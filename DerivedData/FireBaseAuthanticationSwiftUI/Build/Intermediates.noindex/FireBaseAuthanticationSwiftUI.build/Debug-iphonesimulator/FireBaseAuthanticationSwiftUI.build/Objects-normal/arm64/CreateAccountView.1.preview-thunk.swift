import func SwiftUI.__designTimeFloat
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeInteger
import func SwiftUI.__designTimeBoolean

#sourceLocation(file: "/Users/toqsoft/Desktop/BootCamp-YoutubeVideos/FireBaseAuthanticationSwiftUI/FireBaseAuthanticationSwiftUI/Screens/Auth/Views/CreateAccountView.swift", line: 1)
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
        VStack(spacing: __designTimeInteger("#88489_0", fallback: 16)) {
            Text(__designTimeString("#88489_1", fallback: "Please complete all information to create an account."))
                .font(.headline).fontWeight(.medium)
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
                .padding(.vertical)
            
            TextFieldViews
            
            Spacer()
            
            Button {
                
            } label: {
                Text(__designTimeString("#88489_2", fallback: "Create Account"))
                
            }
            .buttonStyle(CapsuleButtonStyle(bgColor: .teal,textColor: .white))
            .toolbarRole(.editor)
            .padding()
            
        }
        .navigationTitle(__designTimeString("#88489_3", fallback: "Set up your account"))
        .padding()
        
     
        
    }
    
   
    private var TextFieldViews : some View{
        
        var isValidPassword : Bool {
            cPassword == password
            
        }
        
        return VStack{
            InputView(
                placeholder: __designTimeString("#88489_4", fallback: "Email or Phone Number "),
                text: $email
            )
            
            InputView(
                placeholder: __designTimeString("#88489_5", fallback: "Full Name"),
                text: $fullName
            )
            
            InputView(
                placeholder: __designTimeString("#88489_6", fallback: "Password"),
                isSecureField: __designTimeBoolean("#88489_7", fallback: true),
                text: $password
            )
            
            ZStack(alignment: .trailing) {
                InputView(
                    placeholder: __designTimeString("#88489_8", fallback: "Confirm your Password"),
                    isSecureField: __designTimeBoolean("#88489_9", fallback: true),
                    text: $cPassword
                )
                Spacer()
                
                if !password.isEmpty && !cPassword.isEmpty {
                    Image(systemName: "\(isValidPassword ? __designTimeString("#88489_10", fallback: "checkmark") : __designTimeString("#88489_11", fallback: "xmark")).circle.fill")
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
