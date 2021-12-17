//
//  thu.swift
//  test
//
//  Created by Le Huu Chien on 10/12/2021.
//

import SwiftUI

struct SingleIsland {
    let name: String
}

struct thu: View {
    @State var islands = [
            SingleIsland(name: "Wangerooge"),
            SingleIsland(name: "Spiekeroog"),
            SingleIsland(name: "Langeoog")]
    var body: some View{
        List{
            ForEach(islands.indices , id: \.self){ index in
                Text("")
            }
        }
    }
        
}

struct thu_Previews: PreviewProvider {
    static var previews: some View {
        thu()
    }
}
