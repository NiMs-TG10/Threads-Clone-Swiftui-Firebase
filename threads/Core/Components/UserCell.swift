//
//  UserCell.swift
//  threads
//
//  Created by Nishant Mehta on 13/04/24.
//

import SwiftUI

struct UserCell: View {
    let user: User
    var body: some View {
        
        HStack{
           CIrcularProfileImageVIew()
            VStack(alignment: .leading){
                Text(user.usrname)
                  
                    .fontWeight(.semibold)
                Text(user.fullname)
                
            }
            .font(.footnote)
            //.padding(.leading)
            Spacer()
            
            Text("Follow")
                .font(.subheadline)
                .fontWeight(.semibold)
                .frame(width: 100, height : 32)
                .overlay{
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(.systemGray),lineWidth:1)
                }
           
        }
        .padding(.horizontal)

    }
}

//#Preview {
//    UserCell()
//}
