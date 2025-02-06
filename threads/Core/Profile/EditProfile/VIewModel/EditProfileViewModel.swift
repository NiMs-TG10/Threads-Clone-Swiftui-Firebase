//
//  EditProfileViewModel.swift
//  threads
//
//  Created by Nishant Mehta on 12/07/24.
//


import Foundation
import SwiftUI
import PhotosUI



class EditProfileViewModel: ObservableObject{
    @Published var selectedItem: PhotosPickerItem?{
        didSet{ Task { await loadImage()}}
    }
    @Published var profileImage: Image?
    
    private func loadImage() async{
        guard let item = selectedItem else {return}
        guard let data = try? await item.loadTransferable(type: Data.self) else {return}
        guard let uiImage = UIImage(data: data) else {return}
        self.profileImage = Image(uiImage: uiImage)
        
        
                
                
    }
    
    
}
