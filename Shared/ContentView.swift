

import SwiftUI
import UIKit

struct ButtonTest: View {
    var title: String
    var body: some View {
        Text(title)
            .padding(8)
            .background(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(Color.black, lineWidth: 1)
            )
            .font(.system(size: 12,weight: .bold))
            
    }
}


struct ContentView: View {
    let screenWidth = UIScreen.main.bounds.width
    
    let listBtn: [String] = ["Button1" , "Button2", "Button3"]
    @State var open = "Open"
    var body: some View {
        VStack {
            Image("new")
                .resizable()
                .scaledToFill()
                .frame(width: screenWidth * 0.5, height: screenWidth * 1, alignment: .center)
                .cornerRadius(10)
                .shadow(radius: 15)
            
            Text("title")
                .font(.system(size: 10))
                .foregroundColor(.white)
            
            Text("Creativity, Inc.")

            Text("Nhìn thấy init (_: tableName: pack: comment :)để biết thêm thông tin về cách khởi tạo Văn bản bằng chuỗi bản địa hóa. Bộ khởi tạo này có thể được sử dụng để hiển thị các khóa bản địa hóa đến từ một nhóm hoặc bảng chuỗi không chuẩn.")
                .font(.system(size: 10))
                .foregroundColor(.white)
                .padding(10)
                .lineSpacing(8)
            
            HStack{
                ForEach(listBtn.indices) { index in
                    ButtonTest(title: listBtn[index])
                }
            }.padding(.top, 24)
            Spacer()
            
            Divider().padding(.top, 8)
            
            Button(action: {
                
            }){
                Text("Buy")
                    .font(.system(size: 12))
                    .foregroundColor(.white)
                    .padding(16)
                    .frame(width: 200, height: 40, alignment: .center)
                    .background(.black)
                    .cornerRadius(16)
                
            }.padding(.top, 30)
           
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
        .background(Image("view1")
                        .resizable()
                        .scaledToFill()
                        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
