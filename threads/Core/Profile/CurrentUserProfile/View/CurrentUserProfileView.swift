//
//  CurrentUserProfileView.swift
//  threads
//
//  Created by Nishant Mehta on 04/07/24.
//

import SwiftUI

struct CurrentUserProfileView: View {
    @StateObject var viewModel = CUrrentUserProfileViewModel()
    @State private var showEditProfile = false
    
    
    private var currentUser: User? {
        return viewModel.currentUser
    }
    var body: some View {
        NavigationStack{
            
                ScrollView(showsIndicators: false) {
                    //bio and stats
                    VStack(alignment: .leading,spacing: 12) {
                        //Name and username
                        
                            ProfileHeaderView(user: currentUser)
                        
                        Button{
                            showEditProfile.toggle()
                        }label: {
                            Text("Edit Profile")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                                .frame(width: 352, height: 32)
                                .background(.black)
                                .cornerRadius(8)
                                .overlay {
                                    RoundedRectangle(cornerRadius: 8)
                                        .stroke(Color(.systemGray4), lineWidth: 1)
                                }
                            
                            
                        }
                        //content view
                        UserContetntListView()
                       
                    }
                    .padding(.horizontal)
                    LazyVStack{
                        ForEach(0 ... 10 , id:\.self ) { thread in
                        THreadCell()}
                    }
 
                }
                .sheet(isPresented: $showEditProfile, content: {
                    EditProfileView()
                        .environmentObject(viewModel)
                })
                .toolbar{
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button{
                            AuthService.shared.signOut()
                        } label: {
                            Text("Log out")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                
                            //Image(systemName: "line.3.horizontal")
                                .foregroundColor(.black)
                        }
                    }
                }
            }
    }
}

#Preview {
    CurrentUserProfileView()
}
