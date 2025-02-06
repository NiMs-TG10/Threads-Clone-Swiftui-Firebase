//
//  FeedVIew.swift
//  threads
//
//  Created by Nishant Mehta on 12/04/24.
//

import SwiftUI

struct FeedVIew: View {
    var body: some View {
        NavigationStack{
            ScrollView(showsIndicators : false){
                LazyVStack{
                    ForEach(0 ... 10 , id : \.self) { thread in
                        THreadCell()
                        
                    }
                }
            }
            .refreshable {
                print("DEBUG : Refresh threads")
            }
            .navigationTitle("Threads")
            .navigationBarTitleDisplayMode(.inline)
            
            
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing){
                Button{
                }label: {
                    Image(systemName: "arrow.counterclockwise")
                        .foregroundColor(.black)
                    
                }

            }
        }
    }
}

#Preview {
    NavigationStack{
        FeedVIew()
    }
}
