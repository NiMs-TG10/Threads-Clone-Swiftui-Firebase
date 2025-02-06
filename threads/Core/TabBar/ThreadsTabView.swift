//
//  ThreadsTabView.swift
//  threads
//
//  Created by Nishant Mehta on 10/04/24.
//

import SwiftUI

struct ThreadsTabView: View {
    
    @State private var selcetedTab = 0
    @State private var showCreatedThreadView = false
    var body: some View {
        TabView(selection: $selcetedTab){
            
            
            FeedVIew()
            
                .tabItem {
                    Image(systemName: selcetedTab == 0 ? "house.fill" : "house")
                        .environment(\.symbolVariants, selcetedTab == 0 ? .fill : .none)
                }
                .onAppear{ selcetedTab = 0 }
                .tag(0)
            
            ExploreView()
                .tabItem {
                    Image(systemName : "magnifyingglass")
                }
                .onAppear{ selcetedTab = 1}
                .tag(1)
            
            FeedVIew()
                .tabItem {
                    Image(systemName : "plus")
                }
                .onAppear{ selcetedTab = 2}
                .tag(2)
            
            
            ActivitView()
            
                .tabItem {
                    Image(systemName: selcetedTab == 3 ? "heart.fill" : "heart")
                        .environment(\.symbolVariants, selcetedTab == 3 ? .fill : .none)
                }
                .onAppear{ selcetedTab = 3 }
                .tag(3)
            
            
          CurrentUserProfileView()
            
                .tabItem {
                    Image(systemName: selcetedTab == 4 ? "person.fill" : "person")
                        .environment(\.symbolVariants, selcetedTab == 4 ? .fill : .none)
                }
                .onAppear{ selcetedTab = 4 }
                .tag(4)
           
            
            
        }
        .onChange(of: selcetedTab, perform: {newValue in
        showCreatedThreadView = selcetedTab == 2})
        .sheet(isPresented: $showCreatedThreadView,  onDismiss: {
            selcetedTab = 0
        }, content: {
            CreateThreadView()
        })
        .tint(.black)
    }
}

#Preview {
    ThreadsTabView()
}

