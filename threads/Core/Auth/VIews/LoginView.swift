//
//  LoginView.swift
//  threads
//
//  Created by Nishant Mehta on 10/04/24.
//

import SwiftUI

struct LoginView: View {
    
 
    @StateObject var viewModel = LoginViewModel()
    
    
    var body: some View {
        
        NavigationStack{
            VStack{
                Spacer()
                Image("threads logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120,height : 120)
                    .padding()
                    .padding(.bottom)
                
                VStack{
                    TextField("Email" , text: $viewModel.email)
                        .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                        .autocorrectionDisabled()
                        .modifier(ThreadsTextFieldModifer())
                    SecureField("password" , text: $viewModel.password)
                        .modifier(ThreadsTextFieldModifer())
                }
                
                NavigationLink{
                    Text("Forgot password")
                    
                }label:{
                    Text("Forgot password")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    
                        .foregroundColor(.black)
                        .padding(.top)
                        .padding(.trailing, 28)
                        .frame(maxWidth: .infinity ,alignment: .trailing)
                    
                    
                }
                .padding(.bottom)
                
                
                Button{
                    Task { try await viewModel.login() }
                    
                    
                }label: {
                    Text("Login")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .frame(width:352 , height: 44)
                        .background(.black)
                        .cornerRadius(10)
                    
                    
                }
                Spacer()
                
                Divider()
                NavigationLink{
                    RegetrationView()
                        //.navigationBarBackButtonHidden()
                    
                }label:{
                    HStack(spacing: 3) {
                        
                     
                            Text("Don't have an accout?")
                            Text("Sign up")
                                .underline()
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        
                            
                        }
                    }
                    .foregroundColor(.black)
                    .font(.footnote)
                    .fontWeight(.semibold)
                    
                }
                .padding(.vertical, 16)
                
                
           
        }
        
        
    }
}

#Preview {
    LoginView()
}
