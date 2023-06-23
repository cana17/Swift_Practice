//
//  SearchUserResponse.swift
//  GithubUserSearch
//
//  Created by woojin Choi on 2023/06/23.
//

import Foundation

struct SearchUserResponse: Decodable {
    var items: [SearchResult]
}
