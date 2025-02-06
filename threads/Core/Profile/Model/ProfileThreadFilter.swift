//
//  ProfileThreadFilter.swift
//  threads
//
//  Created by Nishant Mehta on 14/04/24.
//

import Foundation

enum ProfileThreadFilter: Int, CaseIterable, Identifiable{
    case Threads
    case Replies
    
    var title: String{
        switch self{
        case .Threads: return "Threads"
        case .Replies: return "Replies"
        }
    }
    
    
    var id: Int{ return self.rawValue}
}
