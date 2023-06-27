//
//  UserProfile.swift
//  GithubUserSearch
//
//  Created by woojin Choi on 2023/06/27.
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

extension UserProfile {
    static let mock = UserProfile(
        id: 5119292,
        login: "Louie",
        name: "Woojin Choi",
        avatarUrl: URL(string: "https://avatars.githubusercontent.com/u/5119286?v=4")!,
        htmlUrl: "https://github.com/woojinchoi17",
        followers: 1000,
        following: 20
    )
}
