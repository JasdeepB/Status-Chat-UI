//
//  ChatUI.swift
//  Chat UI
//
//  Created by Jasdeep Brar on 8/4/20.
//  Copyright © 2020 Status. All rights reserved.
//

import SwiftUI

struct ChatUI: View {
    var body: some View {
        NavigationView {
            Form {
                NavigationLink(destination: Text("Chats")) {
                    ChatRow()
                }
                NavigationLink(destination: Text("Chats")) {
                    ChatRow()
                }
                NavigationLink(destination: Text("Chats")) {
                    ChatRow()
                }
                NavigationLink(destination: Text("Chats")) {
                    ChatRow()
                }
                NavigationLink(destination: Text("Chats")) {
                    ChatRow()
                }
                
                Group {
                    NavigationLink(destination: Text("Chats")) {
                        ChatRow()
                    }
                    NavigationLink(destination: Text("Chats")) {
                        ChatRow()
                    }
                    NavigationLink(destination: Text("Chats")) {
                        ChatRow()
                    }
                    NavigationLink(destination: Text("Chats")) {
                        ChatRow()
                    }
                    NavigationLink(destination: Text("Chats")) {
                        ChatRow()
                    }
                    NavigationLink(destination: Text("Chats")) {
                        ChatRow()
                    }
                }
                
            }
            .navigationBarTitle("Messages", displayMode: .large)
            .navigationBarItems(trailing: Button(action: {}) {
                Image(systemName: "square.and.pencil")
                    .font(.title)
            })
        }
    }
}

struct ChatRow: View {
    var body: some View {
        HStack {
            Circle().frame(width: 50, height: 50).foregroundColor(Color.orange)
            Spacer().frame(width: 22)
            VStack(alignment: .leading) {
                Text("Name").fontWeight(.semibold).font(.system(size: 17))
                Text("Message").fontWeight(.light).font(.system(size: 15)).opacity(0.5)
            }
        }.padding()
    }
}

struct ChatUI_Previews: PreviewProvider {
    static var previews: some View {
        ChatUI()
    }
}
