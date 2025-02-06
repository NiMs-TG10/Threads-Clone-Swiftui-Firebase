//
//  ProfileVIew.swift
//  threads
//
//  Created by Nishant Mehta on 12/04/24.
//

import SwiftUI

struct ProfileVIew: View {
    
    let user: User
    
    

    var body: some View {
        
        
        ScrollView(showsIndicators: false) {
            //bio and stats
            VStack(alignment: .leading,spacing: 12) {
             ProfileHeaderView(user: user)
                
                Button{
                    
                }label: {
                    Text("Follow")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 352, height: 32)
                        .background(.black)
                        .cornerRadius(8)
                    
                    
                }
                //content view
                UserContetntListView()
                
                
            }

            
        }
        
        .navigationBarTitleDisplayMode(.inline)
        .padding(.horizontal)
    }
}


//#Preview {
//    ProfileVIew(user: dev.user)
//}


