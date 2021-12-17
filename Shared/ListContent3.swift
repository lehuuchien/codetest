//
//  ListContent3.swift
//  test
//
//  Created by Le Huu Chien on 10/12/2021.
//

import SwiftUI

struct ListContent3: View {
    var texts: String = "Show Phone"
    
    var body: some View {
        VStack{
            Text(texts)
                .onTapGesture {
                }
                VStack{
                    ViewPhones()
                }
        }
    }
}

struct PhoneModel: Hashable {
    var name: String
}

struct ViewPhones: View{
    @State var listPhones = [PhoneModel(name: "ip6"), PhoneModel(name: "ip7"), PhoneModel(name: "ipX"), PhoneModel(name: "ip6 Plus"), PhoneModel(name: "ip7 Plus")]
    
    
    var body: some View{
            List{
                ForEach(listPhones.indices, id:\.self){ index in
                    let item = listPhones[index]
                    Button {
//                        listPhones.remove(at: index)
                        listPhones.shuffle()
                    } label: {
                        ItemPhone(name: item.name)
                    }

                }
                    
            }
        }
    func removeItem(at offsets: IndexSet) {
        listPhones.remove(atOffsets: offsets)
    }
}

struct ItemPhone: View{
    var name: String?
    var body: some View{
            Button(action: {}){
                Text(name ?? "")
        }
    }
}

struct ListContent3_Previews: PreviewProvider {
    static var previews: some View {
        ListContent3()
    }
}
