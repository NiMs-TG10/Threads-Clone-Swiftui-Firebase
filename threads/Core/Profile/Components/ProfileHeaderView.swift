//
//  ProfileHeaderView.swift
//  threads
//
//  Created by Nishant Mehta on 09/07/24.
//

import SwiftUI

struct ProfileHeaderView: View {
    var user: User?
    
    init (user: User?){
        self.user = user
    }
    var body: some View {
        //Name and username
        HStack {
            VStack(alignment: .leading,spacing: 4){
                //name
                Text(user?.fullname ?? "" )
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(.semibold)
                //username
                Text(user?.usrname ?? "")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
                
                
                //Bio
                //if let cuts out the extra space if there is no bio , while ?? "" this leaves the space if the contetnt is empty
                
                if let bio = user?.bio{
                    Text(bio)
                        .padding(.top,10)
                        .fontWeight(.semibold)
                }
                
                Text("2 followers")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
            Spacer()
            CIrcularProfileImageVIew()
            
        }
    }
}

//#Preview {
//    ProfileHeaderView()
//}
