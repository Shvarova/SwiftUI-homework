//
//  LoginView.swift
//  SwiftUI-homework
//
//  Created by Дина Шварова on 15.04.2023.
//

import SwiftUI

struct LoginView: View {
    
    @State var logged = false
    @State var login: String = ""
    @State var password: String = ""

    var body: some View {
        VStack(){
            Image("logo")
                .resizable()
                .frame(width: 100, height: 100)
                .padding(.bottom, 120)


            VStack(spacing: -0.5){
                TextField("Email or phone", text: $login)
                    .frame(height: 50)
                    .modifier(Style())
                    
                SecureField("Password", text: $password)
                    .frame(height: 50)
                    .modifier(Style())
            }

                .border(Color(UIColor.lightGray), width: 0.5)
                .cornerRadius(10)
                .padding(.bottom, 8)


            Button("Log in") {
                print("click to log in btn")
            }
            .frame(maxWidth: .infinity)
            .frame(height: 50)

            .foregroundColor(.white)
            .background(Image("blue_pixel")
                .resizable())
            .cornerRadius(10)


        }
        .padding(20)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(logged: false)
    }
}
