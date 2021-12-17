//
//  ListContent4.swift
//  test
//
//  Created by Le Huu Chien on 10/12/2021.
//

import SwiftUI

// Model
struct ModelName {
    var name: String?
}

//ViewModel
class ListNameViewModel: ObservableObject{
    @Published var listName:[ModelName] = []
    
    func getData() {
        let data = [ModelName(name: "Chien"), ModelName(name: "hoho"), ModelName(name: "haha"), ModelName(name: "hihi"), ModelName(name: "kaka")]
        self.listName = data
    }
    
    func removeItem(index: Int) {
        listName.remove(at: index)
    }
    
}

// View
struct NameItemView: View{
    var name: String?
    var body: some View{
        VStack{
            Text(name ?? "")
        }
    }
}

struct ListNameScreen: View{
    @StateObject var viewModel = ListNameViewModel()
    var body: some View{
        VStack{
            Button {
                viewModel.getData()
            } label: {
                VStack{
                    Text("Click")
                    ForEach(viewModel.listName.indices, id:\.self){ index in
                        let item = viewModel.listName[index]
                        NameItemView(name: item.name)
                            .onTapGesture {
                                viewModel.removeItem(index: index)
                            }
                    }
                }
                
            }
        }
    }

}

struct ListContent4_Previews: PreviewProvider {
    static var previews: some View {
        ListNameScreen()
    }
}
