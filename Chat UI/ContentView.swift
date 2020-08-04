//
//  ContentView.swift
//  Chat UI
//
//  Created by Jasdeep Brar on 8/3/20.
//  Copyright © 2020 Status. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Home().tabItem {
                Image(systemName: "message.fill").font(.title)
            }
            Text("Person").tabItem {
                Image(systemName: "person.fill").font(.title)
            }.edgesIgnoringSafeArea(.top)
        }
        .accentColor(Color("bg"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct Home : View {
    var body: some View {
        ZStack {
            Color("bg").edgesIgnoringSafeArea(.top)
            VStack {
                topView()
            }
        }
    }
}


struct topView : View {
    var body: some View {
        VStack{
            HStack(spacing: 15) {
                Text("Chats").fontWeight(.heavy).font(.system(size: 23))
                Spacer()
                Button(action: {
                    
                }) {
                    Image(systemName: "magnifyingglass").resizable().frame(width: 20, height: 20)
                }
                
                Button(action: {
                    
                }) {
                    Image("menu").resizable().frame(width: 20, height: 20)
                }
            }.foregroundColor(Color.white)
            .padding()
            
            GeometryReader { _ in
                MainView().clipShape(Rounded())
            }
        }
    }
}

struct MainView : View {
    var body: some View {
        List(msgs) { i in
            cellView(id: i.id, msg: i.msg, time: i.time, msgs: i.msgs, name: i.name, pic: i.pic)
        }
    }
}

struct Rounded : Shape {
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: .topLeft, cornerRadii: CGSize(width: 55, height: 55))
        return Path(path.cgPath)
    }
}

struct cellView : View {
    
    var id : Int
    var msg : String
    var time : String
    var msgs : String
    var name : String
    var pic : String
    
    var body: some View {
        HStack(spacing: 15){
            Image(pic).resizable().frame(width: 50, height: 50).clipShape(Circle())
            VStack(spacing: 5){
                Text(name)
                Text(msg).lineLimit(2)
            }
            Spacer()
            
            VStack(spacing: 10) {
                Text(time)
                if msgs != "" {
                    Text(msgs).padding(6).clipShape(Circle()).background(Color("bg")).foregroundColor(.white).clipShape(Circle())
                }
                else {
                    Spacer()
                }
            }
        }.padding(9)
    }
}

struct msgType : Identifiable {
    var id : Int
    var msg : String
    var time : String
    var msgs : String
    var name : String
    var pic : String
}

var msgs : [msgType] = [
    
    msgType(id: 0, msg: "New Album Is Going To Be Released!!!!", time: "1:32 PM", msgs: "2", name: "Taylor Swift", pic: "p0")
    ,msgType(id: 1, msg: "Hi this is Steve Rogers !!!", time: "6:35 AM", msgs: "2", name: "Steve", pic: "p1")
    ,msgType(id: 2, msg: "Founder Of Status", time: "7:39 PM", msgs: "1", name: "Jasdeep", pic: "p2")
    ,msgType(id: 3, msg: "New SwiftUI API Is Released!", time: "4:50 PM", msgs: "", name: "SwiftUI", pic: "p3")
    ,msgType(id: 4, msg: "Free Publicity For Apple Products!!!", time: "4:00 PM", msgs: "", name: "Justine", pic: "p4"),
     msgType(id: 5, msg: "Founder Of Microsoft", time: "6:50 PM", msgs: "", name: "Bill Gates", pic: "p5"),
     msgType(id: 6, msg: "Founder Of Amazon", time: "3:39 PM", msgs: "1", name: "Jeff", pic: "p6"),
     msgType(id: 7, msg: "Released New iPhone 12!!!", time: "10:32 AM", msgs: "2", name: "Tim Cook", pic: "p7")
]

