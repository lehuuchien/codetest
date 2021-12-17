//
//  Product Details.swift
//  test
//
//  Created by Le Huu Chien on 13/12/2021.
//

import SwiftUI

struct Product_Details: View {
    var image: String?
    var name: String?
    var cost: String?
    var costTag: String?
    var thongtin: String?
    var specifcotions: String?
    var moreInfo: String?

    
    @State var tab1Index = 0
    var body: some View {
            ZStack {
                Color.white.edgesIgnoringSafeArea(.all)
                VStack{
                    Text("Product Details")
                        .font(.system(size: 32))
                    Image(image ?? "")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 200, height: 200, alignment: .center)
                    
                    HStack{
                        VStack(alignment: .leading){
                            Text(name ?? "")
                                .font(.system(size: 24))
                            Text("from tag category")
                                .font(.system(size: 16))
                                .foregroundColor(.gray)
                        }
                        .padding(8)
                        Spacer()
                        VStack(alignment: .leading ){
                            Text(cost ?? "")
                                .font(.system(size: 24))
                            Text(costTag ?? "")
                                .font(.system(size: 16))
                                .foregroundColor(.gray)
                        }
                        .padding(8)
                    }
                    
                    Spacer()
                    VStack{
                        Top1TabBar(tabIndex: $tab1Index)
                        if tab1Index == 0 {
                            VStack{
                                Text(thongtin ?? "")
                            }.padding(8)
                            Spacer()
                        }else if tab1Index == 1{
                            VStack{
                                Text(specifcotions ?? "")
                            }.padding(8)
                            Spacer()
                        }else {
                            VStack{
                                Text(moreInfo ?? "")
                            }.padding(8)
                            Spacer()
                        }
                    }
                    
                    Spacer()
                    
                    HStack{
                        VStack{
                            Divider()
                        }
                                NavigationLink(destination: CartContent(image: "tuisach", name: "Handbag", subName: "from bag", cost: "$125", costTag: "$450", number: 0)) {
                                    ZStack{
                                        Circle()
                                            .frame(width: 40, height: 40, alignment: .center)
                                            .padding(8)
                                        Image(systemName: "cart.fill")
                                            .foregroundColor(.white)
                                  }
                             }
                    }
                }
            }
    }
}

struct Product_Details_Previews: PreviewProvider {
    static var previews: some View {
        Product_Details()
    }
}
