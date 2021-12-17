//
//  ContentView4.swift
//  test
//
//  Created by Le Huu Chien on 08/12/2021.
//

import SwiftUI

struct FruittModel: Identifiable, Hashable {
    var id: String = UUID().uuidString
    var name: String
}

struct FruitItem: View {
   var name: String
    var body: some View{
            Text(name)
    }
}

struct ContentView4: View {
    @State var listFruit = [FruittModel(name: "Apple"), FruittModel(name: "banana"), FruittModel(name: "Apple"), FruittModel(name: "banana")]
    var body: some View {
        //
        
        //
        VStack{
            List {
                ForEach(listFruit, id: \.self) { item in
                    FruitItem(name: item.name )
                }
                .onDelete(perform: removeItem)
            }
        }
    }
    func removeItem(at offsets: IndexSet) {
        listFruit.remove(atOffsets: offsets)
    }
    
}
struct ContentView4_Previews: PreviewProvider {
    static var previews: some View {
        ContentView4()
    }
}
