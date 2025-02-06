//
//  CIrcularProfileImageVIew.swift
//  threads
//
//  Created by Nishant Mehta on 13/04/24.
//

import SwiftUI

struct CIrcularProfileImageVIew: View {
    var body: some View {
        Image("modi")
            .resizable()
            .scaledToFill()
            .frame(width: 40, height : 40)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)

    }
}

#Preview {
    CIrcularProfileImageVIew()
}
