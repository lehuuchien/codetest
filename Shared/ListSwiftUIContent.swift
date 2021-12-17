//
//  ListSwiftUIContent.swift
//  test
//
//  Created by Le Huu Chien on 09/12/2021.
//

import SwiftUI

struct ListSwiftUIContent: View {
    let items: [Phone] = [.item1, .item2]
    var body: some View {
//        List(items, children: \.items) { row in
//            Text(row.name)
//        }
        Text("")
    }
}

struct Phone: Identifiable{
    var id = UUID()
    let name: String
    var items: [Phone] = []
    var isExpaned = false
    
    static let iphone6 = Phone(name: "iphone6")
    static let iphone7 = Phone(name: "iphone7")
    static let iphone8 = Phone(name: "iphone8")
    static let samsung = Phone(name: "samsung")
    static let xiaomi = Phone(name: "xiaomi")
    
    static let item1 = Phone(name: "Iphone", items: [Phone.iphone6, Phone.iphone7, Phone.iphone8])
    static let item2 = Phone(name: "Android", items: [Phone.samsung, Phone.xiaomi])
    
}

struct ListSwiftUIContent_Previews: PreviewProvider {
    static var previews: some View {
        ListSwiftUIContent()
    }
}
