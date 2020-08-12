//
//  CommentChatBubble.swift
//  Chat UI
//
//  Created by Jasdeep Brar on 8/11/20.
//  Copyright © 2020 Status. All rights reserved.
//

import SwiftUI

struct CommentChatBubble: View {
    
    static let CommentSectionBackgroundColor = Color("PostComments_bg")
    @State private var isLiked: Bool = false
    
    var body: some View {
        HStack(alignment: .top) {
            Circle()
                .foregroundColor(Color.gray)
                    
                .frame(width: 30, height: 30)
                .padding(.horizontal, 5)
                
                
            VStack(alignment: .leading, spacing: 7) {
                CommentText(username: "Kelsey Brooks  ", comment: "Where are you? In a plane or helicopter?")
                    .lineLimit(nil)
                
                HStack (spacing: 20){
                    Text("13 min")
                        .fontWeight(.medium)
                        .font(.system(size: 13))
                        .opacity(0.75)
                    Text("2 likes")
                        .fontWeight(.medium)
                        .font(.system(size: 13))
                        .opacity(0.75)
                    Spacer()
                }
            }
            Button(action: {isLiked.toggle()}) {
                Image(systemName: isLiked ? "heart.fill" : "heart")
                    .foregroundColor(Color.black)
                    .padding()
            }
        }
        .padding()
        .background(CommentChatBubble.CommentSectionBackgroundColor)
        
    }
}

struct CommentText: View {
    let username: String
    let comment: String
    
    var body: some View {
        Text(username)
            .fontWeight(.regular)
            .font(.system(size: 15))
         + Text(comment)
            .fontWeight(.medium)
            .font(.system(size: 14))
            .foregroundColor(Color.gray)
    }
}

struct CommentChatBubble_Previews: PreviewProvider {
    static var previews: some View {
        CommentChatBubble()
    }
}
