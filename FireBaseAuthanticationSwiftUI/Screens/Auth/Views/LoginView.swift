//
//  LoginView.swift
//  FireBaseAuthanticationSwiftUI
//
//  Created by ToqSoft on 03/05/25.
//

import SwiftUI

struct LoginView: View {
    @State var email : String = ""
    @State var password : String = ""
    var body: some View {
        
        
        NavigationStack {
            ScrollView{
                VStack(spacing: 15){
                    //logo
                    logo
                    //title
                    titleView
                    
                    Spacer().frame(height: 12)
                    //textfields
                    InputView(placeholder: "Email or Phone numebr", text: $email)
                    
                    InputView(placeholder: "Password", isSecureField: true, text: $password)
                    //forgot button
                    foregoteButton
                    
                    //login button
                    loginButton
                    Spacer()
                    
                    //bottom view or
                   
//                    //apple
//                    appleButton
//                    
//                    //google
//                    
//                    googleButton
//                    
//                    
//                    //footer
//                    footerView
                    
                    bottomView
                }
            }
            
            .ignoresSafeArea(.all)
            .padding(.horizontal)
            .padding(.vertical,8)
        }
    }
    
    private var logo : some View{
        Image(systemName: "person.fill")
            .resizable()
            .scaledToFit()
    }
    
    private var  titleView : some View{
        Text("Let's Connect with us!")
            .font(.title2)
            .fontWeight(.semibold)
    }
    
    private var  foregoteButton : some View{
        
        HStack {
            Spacer()
        Button {
            
        } label: {
           
                Text("Forgot password?")
                    .foregroundColor(.gray)
                    .font(.subheadline)
                    .fontWeight(.medium)
            }
        }
    }
    
    private var  loginButton : some View{
        Button {
            
        } label: {
            Text("Login")
            
        }
        .buttonStyle(CapsuleButtonStyle())
    }
    
    private var bottomView : some View{
        VStack(spacing:16){
            lineorView
            appleButton
            googleButton
            footerView
        }
        
    }
    
    private  var lineorView : some View {
        HStack(spacing: 16){
            line
            Text("or")
                .fontWeight(.semibold)
            line
        }
        .foregroundStyle(.gray)
    }
    
    private var appleButton : some View{
        Button {
            
        } label: {
            Label("Sign up with Apple", systemImage: "apple.logo")
            
        }
        .buttonStyle(CapsuleButtonStyle(bgColor: .black))
    }
    
    
    private var googleButton : some View{
        Button {
            
        } label: {
            HStack{
                Image(systemName: "g.circle.fill")
                    .imageScale(.large)
                Text("Sign up with google")
            }
        }
        .buttonStyle(CapsuleButtonStyle(bgColor: .clear,textColor: .black,hasBorder: true))
    }
    
    private var footerView : some View{
        NavigationLink {
            CreateAccountView()
        } label: {
                HStack{
                    Text("Don't have an account?")
                        .foregroundStyle(.black)
                    Text("Sign Up")
                        .foregroundStyle(.teal)
                }
            }
        
    }
    
    
    
    private var line : some View{
        VStack{ Divider().frame(height: 1)}
    }
}

#Preview {
    LoginView()
}

