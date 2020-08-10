//
//  IndividualPost.swift
//  Chat UI
//
//  Created by Jasdeep Brar on 8/9/20.
//  Copyright © 2020 Status. All rights reserved.
//

import SwiftUI

struct IndividualPost: View {
    
    static let CommentsBackgroundColor = Color("PostComments_bg")
    
    var body: some View {
        VStack {
            ZStack {
                Image("Mount_Rainier_from_west").resizable().frame(width: 415, height: 400)
                Button(action: {}) {
                    Image(systemName: "xmark").resizable().frame(width: 30, height: 30).foregroundColor(Color.white).offset(x: 165, y: -160)
                }
                Button(action: {}) {
                    Image(systemName: "chevron.left").resizable().frame(width: 20, height: 30).foregroundColor(Color.white).offset(x: -165, y: 160).opacity(0.5)
                }
                Button(action: {}) {
                    Image(systemName: "chevron.right").resizable().frame(width: 20, height: 30).foregroundColor(Color.white).offset(x: 165, y: 160)
                }
            }.padding().edgesIgnoringSafeArea(.top)
            HStack {
                Circle().frame(width: 40, height: 40).foregroundColor(Color.gray)
                Text("Joanna Smith").fontWeight(.semibold).font(.system(size: 17))
                Spacer().frame(width: 113)
                Text("20 minutes ago").fontWeight(.light).font(.system(size: 12)).opacity(0.5)
            }
            VStack {
                Text("Check out this stunning aerial of Mt. Rainer my buddy and I took this morning").fontWeight(.medium).font(.system(size: 15)).frame(width: 345,height: 50, alignment: .leading).lineLimit(6).padding()
                HStack {
                    Button(action: {}) {
                        Image(systemName: "heart").foregroundColor(Color.black)
                    }
                    Text("2.4k").fontWeight(.medium).font(.system(size: 15))
                    Spacer().frame(width: 20)
                    Button(action: {}) {
                        Image(systemName: "bubble.middle.bottom").foregroundColor(Color.black)
                    }
                    Text("219").fontWeight(.medium).font(.system(size: 15))
                }.offset(x: -108)
            }
            
            ZStack {
                Rectangle().frame(width: 415, height: 330).edgesIgnoringSafeArea(.bottom).foregroundColor(IndividualPost.CommentsBackgroundColor)
                Text("Comment Section Currently Under Development").offset(y: -100)
            }
        }
    }
}

struct IndividualPost_Previews: PreviewProvider {
    static var previews: some View {
        IndividualPost()
    }
}
