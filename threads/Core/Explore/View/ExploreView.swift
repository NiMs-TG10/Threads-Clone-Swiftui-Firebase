//
//  ExploreView.swift
//  threads
//
//  Created by Nishant Mehta on 12/04/24.
//

import SwiftUI

struct ExploreView: View {
    @State private var searchText = ""
    @StateObject var viewModel = ExploreViewModel()
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVStack{
                    ForEach(viewModel.users){ user in
                        NavigationLink(value: user) {
                            VStack {
                                UserCell(user: user)
                            }
                            Divider()
                            
                            
                        }
                        .padding(.vertical,4)

                        }
                }
            }
            .navigationDestination(for: User.self, destination: {user in ProfileVIew(user: user)})
            .navigationTitle("Search")
            .searchable(text: $searchText, prompt: "Search")
        }
    }
}

#Preview {
    ExploreView()
}
