//
//  TopSection.swift
//  Chat UI
//
//  Created by Jasdeep Brar on 8/11/20.
//  Copyright © 2020 Status. All rights reserved.
//

import SwiftUI

struct TopSection: View {
    var body: some View {
        ZStack {
            Image("Mount_Rainier_from_west").resizable().frame(width: 415, height: 400)
            Button(action: {}) {
                Image(systemName: "xmark")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundColor(Color.white)
            }
            .position(x: 370, y: 45)
            HStack{
                Button(action: {}) {
                    Image(systemName: "chevron.left")
                        .resizable()
                        .frame(width: 20, height: 30)
                        .foregroundColor(Color.white)
                        .opacity(0.5)
                }
                Spacer()
                Button(action: {}) {
                    Image(systemName: "chevron.right")
                        .resizable()
                        .frame(width: 20, height: 30)
                        .foregroundColor(Color.white)
                }
            }
            .offset(y: 160)
            .padding(.horizontal, 40)
        }.padding(.bottom)
    }
}

struct TopSection_Previews: PreviewProvider {
    static var previews: some View {
        TopSection()
    }
}
