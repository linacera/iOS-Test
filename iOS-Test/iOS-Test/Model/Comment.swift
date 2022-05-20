//
//  Comment.swift
//  iOS-Test
//
//  Created by lajohanna.cerezo on 19/5/22.
//

import Foundation

struct Comment: Decodable, Identifiable{
    let postId: Int
    let id: Int
    let name: String
    let email: String
    let body: String
}
