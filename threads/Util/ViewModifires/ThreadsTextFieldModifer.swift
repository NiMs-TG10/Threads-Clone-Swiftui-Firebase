//
//  ThreadsTextFieldModifer.swift
//  threads
//
//  Created by Nishant Mehta on 10/04/24.
//

import SwiftUI

struct ThreadsTextFieldModifer : ViewModifier{
    func body (content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal,24)
        
    }
}

