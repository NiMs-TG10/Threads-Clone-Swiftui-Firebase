//
//  AuthService.swift
//  threads
//
//  Created by Nishant Mehta on 24/06/24.
//

import Firebase
import FirebaseFirestoreSwift

class AuthService {
    
    
    @Published var userSession: FirebaseAuth.User?//checks wheater or not user is logged in or not
    
    static let shared = AuthService()
    
    init(){
        self.userSession = Auth.auth().currentUser
        //if it has value then we know that someone is logged in 
    }
    
    @MainActor
    func login(withEmail email: String , password: String) async throws{
        do {
            let result  =  try await Auth.auth().signIn(withEmail: email, password: password)
            self.userSession = result.user
            try await UserService.shared.fetchCurrentUser()
            
            
        } catch {
            print ("DEBUG: Failed to create a user with error \(error.localizedDescription)")
            
        }

    }
    
    func createUser(withEmail email: String , password: String , fullname: String , username: String) async throws {
        do {
            let result  =  try await Auth.auth().createUser(withEmail: email, password: password)
            self.userSession = result.user
            try await uploadUserData(withEmail: email, fullname: fullname, username: username, id: result.user.uid)
            
        } catch {
            print ("DEBUG: Failed to create a user with error \(error.localizedDescription)")
            
        }
    }
    
    
    func signOut(){
        
        try? Auth.auth().signOut() // This signs out on backend
        self.userSession = nil // This removes sesson locally and updates routing
        UserService.shared.reset() // sets current user object to nil
        
    }
    
    
    @MainActor
    private func uploadUserData(withEmail email: String , fullname: String , username: String , id: String) async throws{
        let user = User(id: id, fullname: fullname, usrname: username  , email: email)
        guard let userData = try? Firestore.Encoder().encode(user) else {return}
        try await Firestore.firestore().collection("users").document(id).setData(userData)
        UserService.shared.currentUser = user
        
    }
}
