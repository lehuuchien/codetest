//
//  ContentView2.swift
//  test
//
//  Created by Le Huu Chien on 07/12/2021.
//

import SwiftUI

struct University {
    var name: String
    var subTitle: String
    var distance: String
}
let listUni = [University(name: "Stanford", subTitle: "Palo Alto", distance: "3.9 miles"), University(name: "Edgewood", subTitle: "Redwood City", distance: "3.2 miles"), University(name: "Mission Peak", subTitle: "Fremont", distance: "7.1 miles")]

struct Listtitle: View{
    var title: String
    var subtitle: String
    var distanc: String
    @State var checkColor: Bool = false
    var body: some View{

        HStack{
            VStack(alignment: .leading , spacing: 1){
                Text(title)
                    .font(.system(size: 24))
                Text(subtitle)
                    .font(.system(size: 16))
                    .foregroundColor(.gray)
            }
            Spacer()
            Text(distanc)
                .font(.system(size: 24))
            //
            
            Button(action: {
                checkColor.toggle()
            }){
                Text(">")
                    .foregroundColor(checkColor ? .gray : .blue)
            }
            
            }
        .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
        Divider()
            .padding(.leading, 10)
    }
}

struct ContentView2: View {
    var body: some View {
        VStack{
            Text("Hiking Trails")
                .font(.system(size: 32, weight: .bold))
                
            ScrollView{
                ForEach(listUni.indices, id: \.self){ index in
                    let item = listUni[index]
                    Listtitle(title: item.name, subtitle: item.subTitle, distanc: item.distance)
                }
            }
        }
    }
}


struct ContentView2_Previews: PreviewProvider {
    static var previews: some View {
        ContentView2()
    }
}
