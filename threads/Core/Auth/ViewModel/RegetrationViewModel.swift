//
//  RegetrationViewModel.swift
//  threads
//
//  Created by Nishant Mehta on 23/06/24.
//

import Foundation

class RegetrationViewModel: ObservableObject{
    
    @Published  var email = ""
    @Published  var password = ""
    @Published  var fullname = ""
    @Published  var username = ""
    
    @MainActor
    func createUser() async throws{
        try await AuthService.shared.createUser(withEmail: email, password: password, fullname: fullname, username: username)
        
        
    }
    
    
    
}
