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
        ScrollView {
            VStack {
                TopSection()
                MidSection()
                CommentsUI()
            }
        }.edgesIgnoringSafeArea(.top)
    }
}


struct IndividualPost_Previews: PreviewProvider {
    static var previews: some View {
        IndividualPost()
    }
}
