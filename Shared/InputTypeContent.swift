//
//  InputTypeContent.swift
//  test
//
//  Created by Le Huu Chien on 10/12/2021.
//

import SwiftUI

struct InputTypeContent: View {
    @State var user = ""
    @State var email = ""
    @State var password = ""
    var body: some View {
        VStack{
            ViewItemInput(title: "user*", text: $user, isSecure: false)
            ViewItemInput(title: "email*", text: $email, isSecure: false)
            ViewItemInput(title: "password*", text: $password, isSecure: true)
            
            HStack{
                ViewItemButton(title: "cancel", isButton: true)
                ViewItemButton(title: "Signup")
            }
            
        }
    }
}
struct ModelInput{
    var title: String
}

struct ViewItemInput: View{
    var title: String
    var text: Binding<String>
    var isSecure: Bool?
    var body: some View{
        VStack(alignment: .leading) {
            Group {
                if isSecure != false {
                    SecureField(title, text: text)
                } else {
                    TextField(title, text: text)
                        
                }
            }.padding()
            .overlay(RoundedRectangle(cornerRadius: 8)
                            .stroke(Color.black))
        }
        .padding(8)
    }
}

struct ViewItemButton: View{
    var title: String
    var isButton: Bool?
    var body:some View{
        
        HStack{
            if isButton ?? false {
                Button {
                    
                } label: {
                    Text(title)
                        .foregroundColor(.white)
                        
                }.padding(8)
                .background(.gray)

            }else {
                Button {
                    
                } label: {
                    Text(title)
                        .foregroundColor(.white)
                        
                }.padding(8)
                .background(.blue)

            }
        }
        
    }
}

struct InputTypeContent_Previews: PreviewProvider {
    static var previews: some View {
        InputTypeContent()
    }
}
