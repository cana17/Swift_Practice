//
//  UserProfile.swift
//  GithubUserProfile
//
//  Created by woojin Choi on 2023/06/19.
//

import Foundation

struct UserProfile: Hashable, Identifiable, Decodable {
    
    var id: Int64
    var login: String
    var name: String
    var avatarUrl: URL
    var htmlUrl: String
    var followers: Int
    var following: Int
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case login
        case avatarUrl = "avatar_url"
        case htmlUrl = "html_url"
        case followers
        case following
    }
}
