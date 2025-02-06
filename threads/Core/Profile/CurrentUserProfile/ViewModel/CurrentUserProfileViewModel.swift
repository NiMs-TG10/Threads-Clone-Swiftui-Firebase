//
//  profileViewModel.swift
//  threads
//
//  Created by Nishant Mehta on 28/06/24.
//

import Foundation
import Combine
import PhotosUI
import SwiftUI


class CUrrentUserProfileViewModel: ObservableObject{
    
    @Published var currentUser: User?
    private var cancellables = Set<AnyCancellable>()
    
   
    
    
    
    init(){
        setupSubscribers()
    }
    
    private func setupSubscribers(){
        UserService.shared.$currentUser.sink { [weak self] user  in
            self?.currentUser = user
            
        }.store(in: &cancellables)
    }
    
    
    
}
