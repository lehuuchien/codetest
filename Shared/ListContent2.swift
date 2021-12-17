//
//  ListContent2.swift
//  test
//
//  Created by Le Huu Chien on 09/12/2021.
//

import SwiftUI

struct ListContent2: View {
    var body: some View {
        ScrollView{
            VStack{
                ListPhone()
            }
        }
    }
}

//struct PhoneModel{
//    var name: String?
//
//     let listIOS = [PhoneModel(name: "iphone6"), PhoneModel(name: "iphone7"), PhoneModel(name: "iphone8")]
//
//     let listAndroid = [PhoneModel(name: "samsung"), PhoneModel(name: "xiaomi")]
//}

struct PhoneView: View{
    var data: Phone
    @State private var isExpanded = false
    
    var body: some View{
        VStack {
            Text(data.name)
                .padding()
                .frame(maxWidth: .infinity, maxHeight: 50,alignment: .leading)
                .onTapGesture {
                    isExpanded.toggle()
                }
            if isExpanded {
                VStack {
                    ForEach(data.items.indices, id: \.self) { index in
                        Text(data.items[index].name)
                            .padding()
                    }
                }
            }
        }
    }
}

struct ListPhone: View{
    let items: [Phone] = [.item1, .item2]

    var body: some View{
        ScrollView {
            ForEach(items.indices, id: \.self) { index in
                let item = items[index]
                PhoneView(data: item)
            }
        }
    }
}

struct SectionPhone {
    var name: String
    var phones: [Phone] = []
}

struct ListContent2_Previews: PreviewProvider {
    static var previews: some View {
        ListContent2()
    }
}
