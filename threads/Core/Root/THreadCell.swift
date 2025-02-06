//
//  THreadCell.swift
//  threads
//
//  Created by Nishant Mehta on 12/04/24.
//

import SwiftUI

struct THreadCell: View {
    var body: some View {
        VStack{
            HStack(alignment: .top , spacing: 12) {
               CIrcularProfileImageVIew()
                
                VStack(alignment: .leading, spacing: 4) {
                    
                    HStack {
                        Text("Modi1010")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        
                        
                        Spacer()
                        
                        Text("10m")
                            .font(.caption)
                            .foregroundColor(.gray )
                        
                        
                        Button{
                            
                            
                        }label:{
                            Image(systemName: "ellipsis")
                                .foregroundColor(Color(.darkGray))
                            
                        }
                    }
                    
                    
                   
                    
                    Text("Bhaiyo aur bheno ")
                    //.font(.footnote)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    HStack(spacing : 16 ){
                        Button{
                            
                        } label: {
                            Image(systemName: "heart")
                                .foregroundColor(.black)
                            
                        }
                        Button{
                            
                        } label: {
                            Image(systemName: "bubble.right")
                                .foregroundColor(.black)
                            
                        }
                        Button{
                            
                        } label: {
                            Image(systemName: "arrow.rectanglepath")
                                .foregroundColor(.black)
                            
                        }
                        Button{
                            
                        } label: {
                            Image(systemName: "paperplane")
                                .foregroundColor(.black)
                            
                        }
                        
                    }
                    
                    .padding(.vertical,8)
                    
                    
                    
                    
                }
                
            }
            Divider()
        }.padding()
    }
}

#Preview {
    THreadCell()
}
