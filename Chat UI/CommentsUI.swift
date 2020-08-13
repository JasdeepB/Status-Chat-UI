//
//  CommentsUI.swift
//  Chat UI
//
//  Created by Jasdeep Brar on 8/11/20.
//  Copyright © 2020 Status. All rights reserved.
//

import SwiftUI

struct CommentsUI: View {
    var body: some View {
        LazyVStack(spacing: 0) {
            ForEach(0..<10, id: \.self) { _ in
                CommentChatBubble()
            }
        }
    }
}

struct CommentsUI_Previews: PreviewProvider {
    static var previews: some View {
        CommentsUI()
    }
}
