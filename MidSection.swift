//
//  MidSection.swift
//  Chat UI
//
//  Created by Jasdeep Brar on 8/11/20.
//  Copyright © 2020 Status. All rights reserved.
//

import SwiftUI

struct MidSection: View {
    var body: some View {
        VStack {
            HStack {
                Circle().frame(width: 40, height: 40).foregroundColor(Color.gray)
                Text("Joanna Smith").fontWeight(.semibold).font(.system(size: 17))
                Spacer().frame(width: 113)
                Text("20 minutes ago").fontWeight(.light).font(.system(size: 12)).opacity(0.5)
            }
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
    }
}

struct MidSection_Previews: PreviewProvider {
    static var previews: some View {
        MidSection()
    }
}
