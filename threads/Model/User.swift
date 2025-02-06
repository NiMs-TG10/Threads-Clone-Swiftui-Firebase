

import Foundation

struct User: Identifiable, Codable , Hashable
{
    
    let id: String
    let fullname: String
    let usrname: String
    let email: String
    var profileImageUrl: String?
    var bio: String?
    
    
}
