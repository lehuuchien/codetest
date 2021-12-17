//
//  CartContent.swift
//  test
//
//  Created by Le Huu Chien on 13/12/2021.
//

import SwiftUI

struct CartContent: View {
    var image: String?
    var name: String?
    var subName: String?
    var cost:String?
    var costTag: String?
    @State var number = 0
    var body: some View {
        ZStack{
            VStack{//---
                HStack{
                    Spacer()
                    Text("Cart")
                        .font(.system(size: 32))
                        .padding(.leading, 16)
                    Spacer()
                    Button {} label: {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .frame(width: 50, height: 50, alignment: .center)
                    }

                }
                Text("1 item avallable")
                
                HStack{
                    Image(image ?? "")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100, alignment: .center)
                    Spacer()
                    VStack{
                        Text(name ?? "")
                        Text(subName ?? "")
                            .foregroundColor(.gray)
                            .font(.system(size: 8))
                        HStack{
                            Text(cost ?? "")
                            Text(costTag ?? "")
                        }
                    }
                    Spacer()
                    VStack{
                        Button {
                            
                        } label: {
                            Image(systemName: "x.circle")
                                .foregroundColor(.black)
                        }
                        HStack{
                            Button {
                                self.number -= 1
                            } label: {
                                Image(systemName: "arrowshape.turn.up.backward.circle")
                                    .foregroundColor(.black)
                            }
                            Button {
                                self.number += 1
                            } label: {
                                Image(systemName: "arrowshape.turn.up.forward.circle")
                                    .foregroundColor(.black)
                            }

                        }
                        
                        }

                    }
                }
        }//---
    }
}
struct CartContent_Previews: PreviewProvider {
    static var previews: some View {
        CartContent()
    }
}
