//
//  MVVMContentView2.swift
//  test
//
//  Created by Le Huu Chien on 09/12/2021.
//

import SwiftUI

struct MVVMContentView2: View {
    var body: some View {
        TabView{
            ViewHome2()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            LoginContentView5()
                .tabItem {
                    Image(systemName: "music.note.house")
                    Text("Music Home")
                }
        }
    }
}

struct ViewHome2: View{
    var viewImageModel2 = ViewImageModel2()
    var body: some View{
        VStack{
            HStack{
                Spacer()
                Button(action: {}){
                    Text("Log Out")
                        .padding(.trailing, 8)
                }
            }
            ScrollView(){
                VStack(alignment: .leading, spacing: 1){
                    //-------
                    
                    Text("Activities")
                        .bold()
                        .font(.system(size: 24))
                    
                    VStack(alignment: .leading, spacing: 1){
                            ScrollView(.horizontal, showsIndicators: false){
                                HStack{
                                    //------
                                    ForEach(viewImageModel2.listImage.indices, id: \.self){ index in
                                        let item = viewImageModel2.listImage[index]
                                            ItemImage(name: item.name, image: item.image)
                                    }
                                }
                            }.frame(maxWidth: .infinity, maxHeight: 130, alignment: .center)
                        
                        Text("Snowboading Regions")
                            
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack{
                                //---
                                ForEach(viewImageModel2.listImage.indices, id:\.self){ index in
                                    let item = viewImageModel2.listImage[index]
                                    ItemImage2(name: item.name, image: item.image)
                                }
                                //---
                            }
                        }.frame(maxWidth: .infinity, maxHeight: 250, alignment: .center)
                        
                    }
                    //-------
                }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                    .padding(.leading, 16)
            }
        }
    }
}

struct ImageModel2{
    var name: String?
    var image: String = ""
}

struct ViewImageModel2{
     let listImage = [ImageModel2(name: "anh1", image: "view1"), ImageModel2(name: "anh2", image: "view2"), ImageModel2(name: "anh3", image: "view3"), ImageModel2(name: "anh1", image: "view1"), ImageModel2(name: "anh2", image: "view2"), ImageModel2(name: "anh3", image: "view3")]
}

struct ItemImage: View{
    var name: String?
    var image: String?
    var body: some View{
        ZStack(){
            Image(image ?? "")
                .resizable()
                .scaledToFill()
                .frame(maxWidth: 130, maxHeight: 70, alignment: .center)
                .cornerRadius(10)
            VStack{
                Text(name ?? "")
                    .foregroundColor(.white)
            }.frame(maxWidth: 130, maxHeight: 70, alignment: .center)
        }.frame(maxWidth: 130, maxHeight: 70, alignment: .center)
    }

}
//
struct ItemImage2: View{
    var name: String?
    var image: String?
    var body: some View{
        ZStack(){
            Image(image ?? "")
                .resizable()
                .scaledToFill()
                .frame(width: 150, height: 200, alignment: .center)
                .cornerRadius(10)
            VStack{
                Text(name ?? "")
                    .foregroundColor(.white)
                    .frame(width: 150, height: 200, alignment: .bottom)
                    .padding(.bottom, 8)
            }
        }
    }
}

struct MVVMContentView2_Previews: PreviewProvider {
    static var previews: some View {
        MVVMContentView2()
    }
}
