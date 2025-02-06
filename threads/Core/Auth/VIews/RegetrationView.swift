//
//  RegetrationView.swift
//  threads
//
//  Created by Nishant Mehta on 10/04/24.
//

import SwiftUI

struct RegetrationView: View {
   
    @Environment(\.dismiss) var dismiss
    @StateObject var viewModel = RegetrationViewModel()
    
    
    var body: some View {
        NavigationStack{
            VStack{
               // Spacer()
                
                Image("threads logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120,height : 120)
                    .padding()
                //.padding(.bottom)
                
                VStack{
                    TextField("Email" , text: $viewModel.email)
                        .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                        .autocorrectionDisabled()
                        .modifier(ThreadsTextFieldModifer())
                    SecureField("password" , text: $viewModel.password)
                        .modifier(ThreadsTextFieldModifer())
                    TextField("name" , text: $viewModel.fullname)
                        .modifier(ThreadsTextFieldModifer())
                    TextField("usename" , text: $viewModel.username)
                        .modifier(ThreadsTextFieldModifer())
                        .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                }
                
            }
            
            Button{
                Task { try await viewModel.createUser()} 
                
            }label: {
                Text("Sign up")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .frame(width:352 , height: 44)
                    .background(.black)
                    .cornerRadius(10)
                
                
            }
            .padding(.vertical,16 )
            Spacer()
            
            Divider()
            Button{
                dismiss()
                
            }label: {
                HStack(spacing : 3){
                    Text("Already have an account? ")
                    Text("Sing in")
                        .underline()
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                }
                
            }
            
          
            
            
            
      
            
            
            
        }
        .padding(.top,100)
        
        
    }
    }

    
    
    
    
    #Preview {
        RegetrationView()
    }

