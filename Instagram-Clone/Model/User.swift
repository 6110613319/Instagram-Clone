//
//  User.swift
//  Instagram-Clone
//
//  Created by Natthaporn Wimonanupong on 2/11/2564 BE.
//

import Firebase
import FirebaseFirestoreSwift

// เปลี่ยนข้อมูลที่มาจาก firebase เป้น struct
struct User: Decodable, Identifiable{
    let username: String
    let email: String
    let fullname: String
    var profileImageURL: String?
    @DocumentID var id: String? //set by firebase
    var stats: UserStatsData?
    
    mutating func updateProfileImageURL(url: String){
        profileImageURL = url
    }
    // เช็คว่า profile ปัจจุบันคือใคร
    var isCurrentUser: Bool{
        AuthViewModel.shared.userSession?.uid == id
    }
    
    var didFollow: Bool? = false
    var bio: String?
}

struct UserStatsData: Decodable {
    var following: Int
    var followers: Int
    var posts: Int
}
