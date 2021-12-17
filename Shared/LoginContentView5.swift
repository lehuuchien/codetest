//
//  LoginContentView5.swift
//  test
//
//  Created by Le Huu Chien on 08/12/2021.
//

import SwiftUI

class LoginViewModel: ObservableObject {
    private var user: String = "admin"
    private var pass: String = "123456"
    
    @Published var username: String = "admin"
    @Published var passWord: String = "123456"
    
    func login() {
        if username == user && self.pass == passWord {
            print("LogIn thanh con")
        }else{
            print("nhap sai")
        }
    }
}

struct LoginContentView5: View {
    var mvvm = MVVMContentView()
    @State private var userName: String = ""

    @StateObject private var viewModel = LoginViewModel()
    var body: some View {
        NavigationView{
            VStack{
                Spacer()
                Text("Login")
                    .font(.system(size: 32))
                    .padding()
                VStack(alignment: .leading, spacing: 1){
                    Text("UserName")
                        .font(.system(size: 12))
                        .foregroundColor(.gray)
                        .padding(.leading, 12)
                    
                    HStack{
                        Image("userName")
                            .resizable()
                            .frame(width: 20, height: 20, alignment: .center)
                            .foregroundColor(.black)
                        TextField("userName", text: $viewModel.username)
                    }.padding(6)
                        .frame(maxWidth: .infinity, maxHeight: 50, alignment: .center)
                        .overlay(RoundedRectangle(cornerRadius: 16)
                                    .stroke(Color.black, lineWidth: 1))
                }
                
                VStack(alignment: .leading, spacing: 1){
                    Text("Password")
                        .font(.system(size: 12))
                        .foregroundColor(.gray)
                        .padding(.leading, 12)
                    HStack{
                        Image("passWord")
                            .resizable()
                            .frame(width: 20, height: 20, alignment: .center)
                            .foregroundColor(.black)
                        SecureField("Password", text: $viewModel.passWord)
                            
                    }.padding(6)
                        .frame(maxWidth: .infinity, maxHeight: 50, alignment: .center)
                        .overlay(RoundedRectangle(cornerRadius: 16)
                                    .stroke(Color.black, lineWidth: 1))
                }
                
                VStack{
                    HStack{
                        Spacer()
                        Button(action: {}){
                            Text("forgot password?")
                                .font(.system(size: 12))
                                .foregroundColor(.gray)
                        }
                    }
                    Button(action: {
                       viewModel.login()
                        //----
                    }){
                        NavigationLink(destination: MVVMContentView()){
                            Text("LOGIN")
                                .frame(maxWidth: .infinity, maxHeight: 50, alignment: .center)
                                .background(.black)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                    }.padding(.top, 16)
                }
                Spacer()
                
                VStack{
                    Button(action: {}){
                        Text("G+ Loing with")
                            .foregroundColor(.gray)
                            .padding(.top)
                    }.padding()
                    HStack(spacing: 24){
                        SocialButton(title: "A")
                        SocialButton(title: "B")
                        SocialButton(title: "C")
                    }.padding(.top)
                }
                Spacer()
                VStack{
                    Text("chua co tai khoan?")
                        .font(.system(size: 12))
                        .foregroundColor(.gray)
                    Button(action: {}){
                        Text("Sign Up")
                            .foregroundColor(.black)
                    }
                }
                
            }
            .padding(24)
        }
    }

    struct SocialButton: View {
        var title: String
        var body: some View {
            Button(action: {}){
                Text(title)
                    .frame(width: 50, height: 50, alignment: .center)
                    .background(Circle()
                                .foregroundColor(.black)
                                )
                    .foregroundColor(.white)
            }
        }
        
    }
}

struct LoginContentView5_Previews: PreviewProvider {
    static var previews: some View {
        LoginContentView5()
    }
}
