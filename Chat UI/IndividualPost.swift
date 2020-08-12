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
                }.padding(.bottom)
            
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
