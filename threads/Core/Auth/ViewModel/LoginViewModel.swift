//
//  LoginViewModel.swift
//  threads
//
//  Created by Nishant Mehta on 25/06/24.
//

import Foundation



class LoginViewModel: ObservableObject{
    
    @Published  var email = ""
    @Published  var password = ""
    
    @MainActor
    func login() async throws {
        try await AuthService.shared.login(withEmail: email, password: password)
    }
   
    
}

