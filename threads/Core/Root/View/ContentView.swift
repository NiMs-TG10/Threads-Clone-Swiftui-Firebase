
//root view is going to vary based on the user is logged in or not . and based on the whoever is logged in

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentVIewModel()
    
    var body: some View {
       
        
        Group{
            if viewModel.userSession != nil {
                ThreadsTabView()
            }
            else {
                LoginView()
                
            }
        }
    }
}

#Preview {
    ContentView()
}
