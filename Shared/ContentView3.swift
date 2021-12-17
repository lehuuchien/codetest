//
//  ContentView3.swift
//  test
//
//  Created by Le Huu Chien on 07/12/2021.
//

import SwiftUI

struct NameModel{
    var name: String
}

let listName = [NameModel(name: "chien"), NameModel(name: "chien99"), NameModel(name: "Bac Ninh"),NameModel(name: "chien"), NameModel(name: "chien99"), NameModel(name: "Bac Ninh"),NameModel(name: "chien"), NameModel(name: "chien99"), NameModel(name: "Bac Ninh")]

struct NameItem: View{
    var name: String
    @State var checkClick: Bool = false
    var body: some View{
        VStack{
            Button(action: {
                checkClick.toggle()
            }){
                Text(name)
                    .foregroundColor(checkClick ? .black : .blue)
            }
        }
    }
}

struct ContentView3: View {
    var body: some View {
        List{
            ForEach(listName.indices){index in
                let item = listName[index]
                NameItem(name: item.name)
            }
        }
    }
}

struct ContentView3_Previews: PreviewProvider {
    static var previews: some View {
        ContentView3()
    }
}
