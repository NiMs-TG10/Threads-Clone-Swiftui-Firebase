//
//  UserContetntListView.swift
//  threads
//
//  Created by Nishant Mehta on 09/07/24.
//

import SwiftUI

struct UserContetntListView: View {
    @State private var selectedFilter: ProfileThreadFilter = .Threads
    @Namespace var animation
    
    var body: some View {
        VStack{
            HStack{
                ForEach(ProfileThreadFilter.allCases) { filter in
                    VStack{
                        Text(filter.title)
                            .font(.subheadline)
                            .fontWeight(selectedFilter == filter ? .semibold : .regular)
                        if selectedFilter == filter{
                            Rectangle()
                                .foregroundColor(.black)
                                .frame(width: 180, height: 1)
                                .matchedGeometryEffect(id: "item", in: animation)
                        }else{
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 180, height: 1)
                        }
                        
                        
                    }
                    .onTapGesture {
                        withAnimation(.spring()){
                            selectedFilter = filter
                        }
                    }
                }
            }
            LazyVStack{
                ForEach(0 ... 10 , id:\.self ) { thread in
                    THreadCell()}
            }
            
        }
//        .padding(.horizontal)
    }
        
}

#Preview {
    UserContetntListView()
}
