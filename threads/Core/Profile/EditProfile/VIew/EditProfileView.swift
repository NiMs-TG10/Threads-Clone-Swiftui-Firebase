//
//  EditProfileView.swift
//  threads
//
//  Created by Nishant Mehta on 30/05/24.
//

import SwiftUI
import PhotosUI

struct EditProfileView: View {
    @State private var bio = ""
    @State private var link = ""
    @State private var isPublicAccount = false
    @Environment(\.dismiss) var dismiss
    
    @StateObject var viewModel = EditProfileViewModel()
    
    
    
    
    var body: some View {
        NavigationStack{
            ZStack{
                Color(.systemGroupedBackground)
                    .edgesIgnoringSafeArea([.bottom, .horizontal])
                
                VStack{
                    //name and profile image
                    HStack{
                        VStack(alignment: .leading){
                            Text("Name")
                                .fontWeight(.semibold)
                            Text("Narendra modi")
                            
                        }
                        Spacer()
                        PhotosPicker(selection: $viewModel.selectedItem){
                            if let image = viewModel.profileImage{
                                image
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 40, height: 40)
                                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                
                            }else{
                                CIrcularProfileImageVIew()
                            }
                            
                            
                            
                            
                        }
                        Divider()
                        //bio
                        VStack(alignment:.leading){
                            Text("Bio")
                                .fontWeight(.semibold)
                            
                            TextField("Enter your bio...", text: $bio , axis: .vertical)
                            Divider()
                            Text("Link")
                                .fontWeight(.semibold)
                            TextField("Add Link ... ", text: $link )
                            Divider()
                            Toggle("Private Account" , isOn: $isPublicAccount)
                            
                        }
                        .font(.footnote)
                        
                        
                        
                        
                        
                        
                        
                        
                    }
                    .padding()
                    .background()
                    .padding()
                    .cornerRadius(10)
                    //                .overlay{
                    //                    RoundedRectangle(cornerRadius: 10)
                    //                        .stroke(Color(.systemGray), lineWidth: 1)
                    //                }
                    //
                    
                    
                    
                    
                    
                    
                    
                    
                }
                .navigationTitle("Edit profile")
                .navigationBarTitleDisplayMode(.inline)
                .fontWeight(.bold)
                .toolbar{
                    ToolbarItem(placement: .navigationBarLeading){
                        Button("Cancle"){
                            dismiss()
                        }
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                        
                    }
                    ToolbarItem(placement: .navigationBarTrailing){
                        Button("Done"){
                            
                        }
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                        
                    }
                    
                }
            }
        }
    }
}
#Preview {
    EditProfileView()
}
