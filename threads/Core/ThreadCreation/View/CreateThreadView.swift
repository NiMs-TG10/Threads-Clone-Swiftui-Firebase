//
//  CreateThreadView.swift
//  threads
//
//  Created by Nishant Mehta on 31/05/24.
//

import SwiftUI

struct CreateThreadView: View {
    @State private var caption = ""
    @Environment(\.dismiss) var dismiss
    var body: some View {
       
        NavigationStack{
            VStack{
                HStack{
                    CIrcularProfileImageVIew()
                    VStack(alignment: .leading){
                        Text("Narenda_Modi")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        TextField("Enter the New thread ", text: $caption , axis: .vertical)
                        
                        
                        
                    }
                    Spacer()
                    
                    if !caption.isEmpty{
                        Button{
                            caption = ""
                            
                        }label: {
                            Image(systemName: "xmark")
                                .resizable()
                                .frame(width: 12, height: 12)
                                .foregroundColor(.gray)
                            
                        }
                        
                    }
                    
                    
                   
                }
                Spacer()
                    
                
            }
            .padding()
            
            .navigationTitle("New Thread")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .topBarLeading){
                    Button("Cancle"){
                        dismiss()
                        
                    }
                    .font(.subheadline)
                    .foregroundColor(.black)
                    
                }
                ToolbarItem(placement: .topBarTrailing){
                    Button("Post"){
                        
                    }
                    .opacity(caption.isEmpty ? 0.5 : 1.09)
                    .disabled(caption.isEmpty)
                    .font(.subheadline)
                    .foregroundColor(.black)
                    
                }
                
            }
        }
                
            
        
    }
}

#Preview {
    CreateThreadView()
}
