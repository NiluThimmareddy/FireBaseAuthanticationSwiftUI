import func SwiftUI.__designTimeFloat
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeInteger
import func SwiftUI.__designTimeBoolean

#sourceLocation(file: "/Users/toqsoft/Desktop/BootCamp-YoutubeVideos/FireBaseAuthanticationSwiftUI/FireBaseAuthanticationSwiftUI/Screens/Auth/Views/LoginView.swift", line: 1)
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
                VStack(spacing: __designTimeInteger("#59972_0", fallback: 15)){
                    //logo
                    logo
                    //title
                    titleView
                    
                    Spacer().frame(height: __designTimeInteger("#59972_1", fallback: 12))
                    //textfields
                    InputView(placeholder: __designTimeString("#59972_2", fallback: "Email or Phone numebr"), text: $email)
                    
                    InputView(placeholder: __designTimeString("#59972_3", fallback: "Password"), isSecureField: __designTimeBoolean("#59972_4", fallback: true), text: $password)
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
            .padding(.vertical,__designTimeInteger("#59972_5", fallback: 8))
        }
    }
    
    private var logo : some View{
        Image(systemName: __designTimeString("#59972_6", fallback: "person.fill"))
            .resizable()
            .scaledToFit()
    }
    
    private var  titleView : some View{
        Text(__designTimeString("#59972_7", fallback: "Let's Connect with us!"))
            .font(.title2)
            .fontWeight(.semibold)
    }
    
    private var  foregoteButton : some View{
        
        HStack {
            Spacer()
        Button {
            
        } label: {
           
                Text(__designTimeString("#59972_8", fallback: "Forgot password?"))
                    .foregroundColor(.gray)
                    .font(.subheadline)
                    .fontWeight(.medium)
            }
        }
    }
    
    private var  loginButton : some View{
        Button {
            
        } label: {
            Text(__designTimeString("#59972_9", fallback: "Login"))
            
        }
        .buttonStyle(CapsuleButtonStyle())
    }
    
    private var bottomView : some View{
        VStack(spacing:__designTimeInteger("#59972_10", fallback: 16)){
            lineorView
            appleButton
            googleButton
            footerView
        }
        
    }
    
    private  var lineorView : some View {
        HStack(spacing: __designTimeInteger("#59972_11", fallback: 16)){
            line
            Text(__designTimeString("#59972_12", fallback: "or"))
                .fontWeight(.semibold)
            line
        }
        .foregroundStyle(.gray)
    }
    
    private var appleButton : some View{
        Button {
            
        } label: {
            Label(__designTimeString("#59972_13", fallback: "Sign up with Apple"), systemImage: __designTimeString("#59972_14", fallback: "apple.logo"))
            
        }
        .buttonStyle(CapsuleButtonStyle(bgColor: .black))
    }
    
    
    private var googleButton : some View{
        Button {
            
        } label: {
            HStack{
                Image(systemName: __designTimeString("#59972_15", fallback: "g.circle.fill"))
                    .imageScale(.large)
                Text(__designTimeString("#59972_16", fallback: "Sign up with google"))
            }
        }
        .buttonStyle(CapsuleButtonStyle(bgColor: .clear,textColor: .black,hasBorder: __designTimeBoolean("#59972_17", fallback: true)))
    }
    
    private var footerView : some View{
        NavigationLink {
            CreateAccountView()
        } label: {
                HStack{
                    Text(__designTimeString("#59972_18", fallback: "Don't have an account?"))
                        .foregroundStyle(.black)
                    Text(__designTimeString("#59972_19", fallback: "Sign Up"))
                        .foregroundStyle(.teal)
                }
            }
        
    }
    
    
    
    private var line : some View{
        VStack{ Divider().frame(height: __designTimeInteger("#59972_20", fallback: 1))}
    }
}

#Preview {
    LoginView()
}

