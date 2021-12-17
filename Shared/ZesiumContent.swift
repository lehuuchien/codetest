//
//  ZesiumContent.swift
//  test
//
//  Created by Le Huu Chien on 13/12/2021.
//

import SwiftUI

struct ZesiumContent: View {
    @State var isNavigationBarHidden: Bool = false
    @State var tabIndex = 0
    var body: some View {
        NavigationView{
            VStack{
                HStack{
                    Spacer()
                    Text("Home")
                        .font(.system(size: 32))
                        .padding(.leading, 16)
                    Spacer()
                    Button(action: {}){
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .padding(.trailing, 12)
                    }
                }.padding(.bottom, 16)
                
                VStack{
                    TopTabBar(tabIndex: $tabIndex)
                    if tabIndex == 0 {
                        Handbags()
                    }
                    else if tabIndex == 1 {
                        Womens()
                    }else {
                        Boots()
                    }
                }
            }.navigationBarTitleDisplayMode(.inline)
                .navigationBarHidden(true)
        }
    }
}
struct Handbags: View {
    var body: some View {
        ZStack {
            VStack{ //---
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        ZStack{
                            Rectangle()
                                .foregroundColor(.clear)
                                .background(Color(hex: 0xfECECEC))
                                .cornerRadius(8)
                            NavigationLink(destination: Product_Details(image: "tuisach", name: "Handbag", cost: "$125", costTag: "$450" , thongtin: "You create a button by providing an action and a label. The action is either a method or closure property that does something when a user clicks or taps the button. The label is a view that describes the button's action, for example, by showing text such as Cancel or an icon such as a back arrow.", specifcotions: "For the common case of text-only labels, you can use the convenience initializer that takes a title string (or localized string key) as its first parameter, instead of a trailing closure:", moreInfo: "Use buttons for any user interface element that triggers actions on press. Buttons automatically adapt their visual style to match the expected style within these different containers and contexts. For example, to create a list cell that triggers an action when selected by the user, add a button to the list's content. For example:")){
                                ItemViewBag(image: "tuisach")
                                    .frame(width: 200, height: 100, alignment: .center)
                            }
                            
                        }.frame(maxWidth: 200, maxHeight: 170, alignment: .center)
                            .padding(8)
                        //
                        ZStack{
                            Rectangle()
                                .foregroundColor(.clear)
                                .background(Color(hex: 0xfECECEC))
                                .cornerRadius(8)
                            NavigationLink(destination: Product_Details(image: "tuisachpng", name: "Handbag2", cost: "$3.000", costTag: "$10.000", thongtin: "Use buttons for any user interface element that triggers actions on press. Buttons automatically adapt their visual style to match the expected style within these different containers and contexts. For example, to create a list cell that triggers an action when selected by the user, add a button to the list's content. For example:", specifcotions: "You create a button by providing an action and a label. The action is either a method or closure property that does something when a user clicks or taps the button. The label is a view that describes the button's action, for example, by showing text such as Cancel or an icon such as a back arrow.", moreInfo: "For the common case of text-only labels, you can use the convenience initializer that takes a title string (or localized string key) as its first parameter, instead of a trailing closure")){
                                ItemViewBag(image: "tuisachpng")
                                    .frame(width: 200, height: 100, alignment: .center)
                            }
                            
                        }.frame(maxWidth: 200, maxHeight: 170, alignment: .center)
                            .padding(8)
                        //
                        ZStack{
                            Rectangle()
                                .foregroundColor(.clear)
                                .background(Color(hex: 0xfECECEC))
                                .cornerRadius(8)
                            NavigationLink(destination: Product_Details(image: "tuisachpng1", name: "Handbag", cost: "$5.125", costTag: "$12.450" , thongtin: "You create a button by providing an action and a label. The action is either a method or closure property that does something when a user clicks or taps the button. The label is a view that describes the button's action, for example, by showing text such as Cancel or an icon such as a back arrow.", specifcotions: "For the common case of text-only labels, you can use the convenience initializer that takes a title string (or localized string key) as its first parameter, instead of a trailing closure:", moreInfo: "Use buttons for any user interface element that triggers actions on press. Buttons automatically adapt their visual style to match the expected style within these different containers and contexts. For example, to create a list cell that triggers an action when selected by the user, add a button to the list's content. For example:")){
                                ItemViewBag(image: "tuisachpng1")
                                    .frame(width: 200, height: 100, alignment: .center)
                            }
                            
                        }.frame(maxWidth: 200, maxHeight: 170, alignment: .center)
                            .padding(8)
                    }
                }
                .padding(.bottom, 32)
                .padding(.top, 16)
                
                ScrollView(showsIndicators: false){
                    VStack{
                        HStack{
                            ItemViewBag(image: "tuisach1", name: "Hand bags", cost: "$10.000")
                                .padding()
                            ItemViewBag(image: "tuisach2", name: "Bagpack", cost: "$10.000")
                                .padding()
                        }
                        //
                        HStack{
                            ItemViewBag(image: "tuisach3", name: "Hand bags", cost: "$10.000")
                                .padding()
                            ItemViewBag(image: "tuisach4", name: "Bagpack", cost: "$10.000")
                                .padding()
                        }
                        //
                        HStack{
                            ItemViewBag(image: "tuisach1", name: "Hand bags", cost: "$10.000")
                                .padding()
                            ItemViewBag(image: "tuisach2", name: "Bagpack", cost: "$10.000")
                                .padding()
                        }
                        //
                        HStack{
                            ItemViewBag(image: "tuisach3", name: "Hand bags", cost: "$10.000")
                                .padding()
                            ItemViewBag(image: "tuisach4", name: "Bagpack", cost: "$10.000")
                                .padding()
                        }
                    }
                }
            }
        }//---
    }
}

struct Womens: View{
    var body: some View{
        VStack{ //---
            ScrollView(.horizontal, showsIndicators: false){
                HStack{
                    ZStack{
                        Rectangle()
                            .foregroundColor(.clear)
                            .background(Color(hex: 0xfECECEC))
                            .cornerRadius(8)
                        NavigationLink(destination: Product_Details(image: "tuisach", name: "Handbag", cost: "$125", costTag: "$450" , thongtin: "You create a button by providing an action and a label. The action is either a method or closure property that does something when a user clicks or taps the button. The label is a view that describes the button's action, for example, by showing text such as Cancel or an icon such as a back arrow.", specifcotions: "For the common case of text-only labels, you can use the convenience initializer that takes a title string (or localized string key) as its first parameter, instead of a trailing closure:", moreInfo: "Use buttons for any user interface element that triggers actions on press. Buttons automatically adapt their visual style to match the expected style within these different containers and contexts. For example, to create a list cell that triggers an action when selected by the user, add a button to the list's content. For example:")){
                            ItemViewBag(image: "tuisach")
                                .frame(width: 200, height: 100, alignment: .center)
                        }
                        
                    }.frame(maxWidth: 200, maxHeight: 170, alignment: .center)
                        .padding(8)
                    //
                    ZStack{
                        Rectangle()
                            .foregroundColor(.clear)
                            .background(Color(hex: 0xfECECEC))
                            .cornerRadius(8)
                        NavigationLink(destination: Product_Details(image: "tuisachpng", name: "Handbag2", cost: "$3.000", costTag: "$10.000", thongtin: "Use buttons for any user interface element that triggers actions on press. Buttons automatically adapt their visual style to match the expected style within these different containers and contexts. For example, to create a list cell that triggers an action when selected by the user, add a button to the list's content. For example:", specifcotions: "You create a button by providing an action and a label. The action is either a method or closure property that does something when a user clicks or taps the button. The label is a view that describes the button's action, for example, by showing text such as Cancel or an icon such as a back arrow.", moreInfo: "For the common case of text-only labels, you can use the convenience initializer that takes a title string (or localized string key) as its first parameter, instead of a trailing closure")){
                            ItemViewBag(image: "tuisachpng")
                                .frame(width: 200, height: 100, alignment: .center)
                        }
                        
                    }.frame(maxWidth: 200, maxHeight: 170, alignment: .center)
                        .padding(8)
                    //
                    ZStack{
                        Rectangle()
                            .foregroundColor(.clear)
                            .background(Color(hex: 0xfECECEC))
                            .cornerRadius(8)
                        NavigationLink(destination: Product_Details(image: "tuisachpng1", name: "Handbag", cost: "$5.125", costTag: "$12.450" , thongtin: "You create a button by providing an action and a label. The action is either a method or closure property that does something when a user clicks or taps the button. The label is a view that describes the button's action, for example, by showing text such as Cancel or an icon such as a back arrow.", specifcotions: "For the common case of text-only labels, you can use the convenience initializer that takes a title string (or localized string key) as its first parameter, instead of a trailing closure:", moreInfo: "Use buttons for any user interface element that triggers actions on press. Buttons automatically adapt their visual style to match the expected style within these different containers and contexts. For example, to create a list cell that triggers an action when selected by the user, add a button to the list's content. For example:")){
                            ItemViewBag(image: "tuisachpng1")
                                .frame(width: 200, height: 100, alignment: .center)
                        }
                        
                    }.frame(maxWidth: 200, maxHeight: 170, alignment: .center)
                        .padding(8)
                }
            }
            .padding(.bottom, 32)
            .padding(.top, 16)
            
            ScrollView(showsIndicators: false){
                VStack{
                    HStack{
                        ItemViewBag(image: "tuisach1", name: "Hand bags", cost: "$10.000")
                            .padding()
                        ItemViewBag(image: "tuisach2", name: "Bagpack", cost: "$10.000")
                            .padding()
                    }
                    //
                    HStack{
                        ItemViewBag(image: "tuisach3", name: "Hand bags", cost: "$10.000")
                            .padding()
                        ItemViewBag(image: "tuisach4", name: "Bagpack", cost: "$10.000")
                            .padding()
                    }
                    //
                    HStack{
                        ItemViewBag(image: "tuisach1", name: "Hand bags", cost: "$10.000")
                            .padding()
                        ItemViewBag(image: "tuisach2", name: "Bagpack", cost: "$10.000")
                            .padding()
                    }
                    //
                    HStack{
                        ItemViewBag(image: "tuisach3", name: "Hand bags", cost: "$10.000")
                            .padding()
                        ItemViewBag(image: "tuisach4", name: "Bagpack", cost: "$10.000")
                            .padding()
                    }
                }
            }
        }//---
    }
}

struct Boots: View{
    var body: some View {
        VStack{ //---
            ScrollView(.horizontal, showsIndicators: false){
                HStack{
                    ZStack{
                        Rectangle()
                            .foregroundColor(.clear)
                            .background(Color(hex: 0xfECECEC))
                            .cornerRadius(8)
                        NavigationLink(destination: Product_Details(image: "tuisach", name: "Handbag", cost: "$125", costTag: "$450" , thongtin: "You create a button by providing an action and a label. The action is either a method or closure property that does something when a user clicks or taps the button. The label is a view that describes the button's action, for example, by showing text such as Cancel or an icon such as a back arrow.", specifcotions: "For the common case of text-only labels, you can use the convenience initializer that takes a title string (or localized string key) as its first parameter, instead of a trailing closure:", moreInfo: "Use buttons for any user interface element that triggers actions on press. Buttons automatically adapt their visual style to match the expected style within these different containers and contexts. For example, to create a list cell that triggers an action when selected by the user, add a button to the list's content. For example:")){
                            ItemViewBag(image: "tuisach")
                                .frame(width: 200, height: 100, alignment: .center)
                        }
                        
                    }.frame(maxWidth: 200, maxHeight: 170, alignment: .center)
                        .padding(8)
                    //
                    ZStack{
                        Rectangle()
                            .foregroundColor(.clear)
                            .background(Color(hex: 0xfECECEC))
                            .cornerRadius(8)
                        NavigationLink(destination: Product_Details(image: "tuisachpng", name: "Handbag2", cost: "$3.000", costTag: "$10.000", thongtin: "Use buttons for any user interface element that triggers actions on press. Buttons automatically adapt their visual style to match the expected style within these different containers and contexts. For example, to create a list cell that triggers an action when selected by the user, add a button to the list's content. For example:", specifcotions: "You create a button by providing an action and a label. The action is either a method or closure property that does something when a user clicks or taps the button. The label is a view that describes the button's action, for example, by showing text such as Cancel or an icon such as a back arrow.", moreInfo: "For the common case of text-only labels, you can use the convenience initializer that takes a title string (or localized string key) as its first parameter, instead of a trailing closure")){
                            ItemViewBag(image: "tuisachpng")
                                .frame(width: 200, height: 100, alignment: .center)
                        }
                        
                    }.frame(maxWidth: 200, maxHeight: 170, alignment: .center)
                        .padding(8)
                    //
                    ZStack{
                        Rectangle()
                            .foregroundColor(.clear)
                            .background(Color(hex: 0xfECECEC))
                            .cornerRadius(8)
                        NavigationLink(destination: Product_Details(image: "tuisachpng1", name: "Handbag", cost: "$5.125", costTag: "$12.450" , thongtin: "You create a button by providing an action and a label. The action is either a method or closure property that does something when a user clicks or taps the button. The label is a view that describes the button's action, for example, by showing text such as Cancel or an icon such as a back arrow.", specifcotions: "For the common case of text-only labels, you can use the convenience initializer that takes a title string (or localized string key) as its first parameter, instead of a trailing closure:", moreInfo: "Use buttons for any user interface element that triggers actions on press. Buttons automatically adapt their visual style to match the expected style within these different containers and contexts. For example, to create a list cell that triggers an action when selected by the user, add a button to the list's content. For example:")){
                            ItemViewBag(image: "tuisachpng1")
                                .frame(width: 200, height: 100, alignment: .center)
                        }
                        
                    }.frame(maxWidth: 200, maxHeight: 170, alignment: .center)
                        .padding(8)
                }
            }
            .padding(.bottom, 32)
            .padding(.top, 16)
            
            ScrollView(showsIndicators: false){
                VStack{
                    HStack{
                        ItemViewBag(image: "tuisach1", name: "Hand bags", cost: "$10.000")
                            .padding()
                        ItemViewBag(image: "tuisach2", name: "Bagpack", cost: "$10.000")
                            .padding()
                    }
                    //
                    HStack{
                        ItemViewBag(image: "tuisach3", name: "Hand bags", cost: "$10.000")
                            .padding()
                        ItemViewBag(image: "tuisach4", name: "Bagpack", cost: "$10.000")
                            .padding()
                    }
                    //
                    HStack{
                        ItemViewBag(image: "tuisach1", name: "Hand bags", cost: "$10.000")
                            .padding()
                        ItemViewBag(image: "tuisach2", name: "Bagpack", cost: "$10.000")
                            .padding()
                    }
                    //
                    HStack{
                        ItemViewBag(image: "tuisach3", name: "Hand bags", cost: "$10.000")
                            .padding()
                        ItemViewBag(image: "tuisach4", name: "Bagpack", cost: "$10.000")
                            .padding()
                    }
                }
            }
        }//---
    }
}

struct TabBarButton: View{
    let text: String
    @Binding var isSelected: Bool
    var body: some View{
        Text(text)
            .fontWeight(isSelected ? .heavy : .none)
            .font(.custom("Avenir", size: 16))
            .padding(.bottom, 10)
            .border(width: isSelected ? 2 : 0 ,edges: [.bottom], color: .blue)
    }
}

struct TopTabBar: View {
    @Binding var tabIndex: Int
    var body: some View {
        HStack(spacing: 20){
            Spacer()
            TabBarButton(text: "Handbags", isSelected: .constant(tabIndex == 0))
                .onTapGesture {
                    onButtonTapped(index: 0)
                }
            Spacer()
            //
            TabBarButton(text: "Womens", isSelected: .constant(tabIndex == 1))
                .onTapGesture {
                    onButtonTapped(index: 1)
                }
            Spacer()
            //
            TabBarButton(text: "Boots", isSelected: .constant(tabIndex == 2))
                .onTapGesture {
                    onButtonTapped(index: 2)
                }
            Spacer()
        }
    }
    
    private func onButtonTapped(index: Int){
        withAnimation {
            tabIndex = index
        }
    }
}
//
struct Top1TabBar: View {
    @Binding var tabIndex: Int
    var body: some View {
        HStack(spacing: 20){
            Spacer()
            TabBarButton(text: "Thong tin", isSelected: .constant(tabIndex == 0))
                .onTapGesture {
                    onButtonTapped(index: 0)
                }
            Spacer()
            //
            TabBarButton(text: "Specifcotions", isSelected: .constant(tabIndex == 1))
                .onTapGesture {
                    onButtonTapped(index: 1)
                }
            Spacer()
            //
            TabBarButton(text: "More info", isSelected: .constant(tabIndex == 2))
                .onTapGesture {
                    onButtonTapped(index: 2)
                }
            Spacer()
        }
    }
    
    private func onButtonTapped(index: Int){
        withAnimation {
            tabIndex = index
        }
    }
}

struct BagModel{
    var image: String
    var name: String?
    var cost: String?
}

struct ItemViewBag: View {
    var image: String
    var name: String?
    var cost: String?
    var body: some View {
        VStack{
            Image(image)
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 70, alignment: .center)
                .padding()
            Text(name ?? "")
            Text(cost ?? "")
                .foregroundColor(.gray)
        }.frame(maxWidth: 150, maxHeight: 160, alignment: .center)
    }
}
//----

struct EdgeBorder: Shape {
    
    var width: CGFloat
    var edges: [Edge]
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        for edge in edges {
            var x: CGFloat {
                switch edge {
                case .top, .bottom, .leading: return rect.minX
                case .trailing: return rect.maxX - width
                }
            }
            
            var y: CGFloat {
                switch edge {
                case .top, .leading, .trailing: return rect.minY
                case .bottom: return rect.maxY - width
                }
            }
            
            var w: CGFloat {
                switch edge {
                case .top, .bottom: return rect.width
                case .leading, .trailing: return self.width
                }
            }
            
            var h: CGFloat {
                switch edge {
                case .top, .bottom: return self.width
                case .leading, .trailing: return rect.height
                }
            }
            path.addPath(Path(CGRect(x: x, y: y, width: w, height: h)))
        }
        return path
    }
}

extension View {
    func border(width: CGFloat, edges: [Edge], color: SwiftUI.Color) -> some View {
        overlay(EdgeBorder(width: width, edges: edges).foregroundColor(color))
    }
}

struct ZesiumContent_Previews: PreviewProvider {
    static var previews: some View {
        ZesiumContent()
    }
}
