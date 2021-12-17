//
//  MVVMContentView.swift
//  test
//
//  Created by Le Huu Chien on 08/12/2021.
//

import SwiftUI

struct MVVMContentView: View {
    var body: some View {
        ViewHome()
    }
    
}

struct ViewHome: View{
    @StateObject var viewImgModel = ViewImageModel()
    var body: some View{
        VStack(alignment: .leading, spacing: 1){
            HStack{
                Spacer()
                Button(action:{}){
                    Text("Log Out")
                }.padding(.trailing)
            }
            VStack{
                Text("Activities")
                    .font(.system(size: 24))
                    .bold()
                    .padding(.bottom)
                    .padding(.leading)
            }
                ScrollView(){
                    VStack(alignment: .leading, spacing: 1){
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack{
                                ForEach(viewImgModel.listImg.indices, id: \.self){ index in
                                        let item = viewImgModel.listImg[index]
                                        RowImg(name: item.name, image: item.img)
                                    }
                            }
                        }.frame(maxWidth: .infinity, maxHeight: 100, alignment: .center)
                        
                        Text("Snowboading Regions")
                                .font(.system(size: 16))
                                .padding(.top, 16)
                                .padding(.bottom, 8)
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack{
                                ForEach(viewImgModel.listImg.indices, id: \.self){ index in
                                        let item = viewImgModel.listImg[index]
                                        RowImg2(name: item.name, image: item.img)
                                    }
                            }
                        }.frame(maxWidth: .infinity, maxHeight: 250, alignment: .center)
                        
                        lifeStyleView
                    }
                    .padding(.leading, 16)
                    .onAppear() {
                        viewImgModel.getData()
            }
                }
                
        }
    }
    var lifeStyleView: some View {
        VStack{
            VStack(alignment: .leading, spacing: 1){
                Text("Lifestyle")
                    .bold()
                    .font(.system(size: 18))
                    .padding(EdgeInsets(top: 8, leading: 8, bottom: 0, trailing: 0))
                Text("Explore, Fashion, Food, msic, art, photography, travel and more")
                    .font(.system(size: 15))
                    .padding(.leading, 8)
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        ForEach(viewImgModel.listImg.indices, id: \.self){ index in
                                let item = viewImgModel.listImg[index]
                                RowImg3(name: item.name, image: item.img)
                            }
                    }
                }.frame(maxWidth: .infinity, maxHeight: 300, alignment: .center)
                    .padding(.top, 16)
            }
            .frame(maxWidth: .infinity, maxHeight: 400, alignment: .leading)
            .background(Color(hex: 0xfECECEC))
            .cornerRadius(15)
        }.padding(.trailing, 16)
            .padding(.bottom, 8)
    }
}

class ViewImageModel: ObservableObject {
    @Published var listImg: [ImageModel] = []
    
    func getData() {
        let data = [ImageModel(name: "anh 1", img: "view1"), ImageModel(name: "anh 2", img: "view2"), ImageModel(name: "anh 3", img: "view3"), ImageModel(name: "anh 1", img: "view1"), ImageModel(name: "anh 2", img: "view2"), ImageModel(name: "anh 3", img: "view3")]
        DispatchQueue.main.asyncAfter(deadline: .now() + 2){
            self.listImg = data
        }
    }
}

struct ImageModel{
    var name: String?
    var img: String = ""
}

struct RowImg: View{
    var name: String?
    var image: String?
    
    var body: some View{
        ZStack {
            Image(image ?? "")
                .resizable()
                .scaledToFill()
                .frame(maxWidth: 130, maxHeight: 70, alignment: .center)
                .cornerRadius(15)
            Text(name ?? "")
                .foregroundColor(.white)
        }
    }
}

struct RowImg2: View{
    var name: String?
    var image: String?
    
    var body: some View{
        ZStack{
            Image(image ?? "")
                .resizable()
                .scaledToFill()
                .frame(width: 150, height: 230, alignment: .center)
                .cornerRadius(10)
                .padding(.bottom, 16)
            VStack{
                Text(name ?? "")
                    .foregroundColor(.white)
            }.frame(width: 50, height: 200, alignment: .bottom)
            
        }
    }
}

struct RowImg3: View{
    var name: String?
    var image: String?
    var body: some View{
        ZStack{
            Image(image ?? "")
                .resizable()
                .scaledToFill()
                .frame(width: 150, height: 230, alignment: .center)
                .cornerRadius(10)
            VStack{
                Text(name ?? "")
                    .foregroundColor(.white)
            }
        }
    }
}

extension Color {
init(hex: Int, opacity: Double = 1.0) {
    let red = Double((hex & 0xff0000) >> 16) / 255.0
    let green = Double((hex & 0xff00) >> 8) / 255.0
    let blue = Double((hex & 0xff) >> 0) / 255.0
    self.init(.sRGB, red: red, green: green, blue: blue, opacity: opacity)
}
}

struct MVVMContentView_Previews: PreviewProvider {
    static var previews: some View {
        MVVMContentView()
    }
}
