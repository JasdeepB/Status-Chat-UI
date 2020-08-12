//
//  MessagesUI.swift
//  Chat UI
//
//  Created by Jasdeep Brar on 8/5/20.
//  Copyright © 2020 Status. All rights reserved.
//

import SwiftUI

struct MessagesUI: View {
    @State var message: String = ""
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    
                }) {
                    Image(systemName: "chevron.left").resizable().frame(width: 20, height: 35).foregroundColor(Color.black)
                }
                Spacer().frame(width: 0)
                Text("Joanna Smith").fontWeight(.semibold).font(.system(size: 17)).frame(width: 300, height: 17,alignment: .trailing)
                Spacer().frame(width: 25)
                Circle().frame(width: 40, height: 40).foregroundColor(Color.gray)
            }.padding()
            
            Demo()
            
            HStack{
                
                Button(action: {
                }) {
                    Image(systemName: "plus").resizable().frame(width: 30, height: 30).foregroundColor(Color.black)
                }
                Spacer().frame(width: 15)
                Button(action: {
                }) {
                    Image(systemName: "camera").resizable().frame(width: 35, height: 30).foregroundColor(Color.black)
                }
                Spacer().frame(width: 15)
                TextField("Type Message", text: $message).textFieldStyle(RoundedBorderTextFieldStyle()).frame(width: 270)
                
            }.frame(width: 400)
        }
    }
}

struct MessagesUI_Previews: PreviewProvider {
    static var previews: some View {
        MessagesUI()
    }
}
