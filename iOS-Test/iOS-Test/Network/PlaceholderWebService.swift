//
//  HTTP.swift
//  iOS-Test
//
//  Created by lajohanna.cerezo on 19/5/22.
//

import Foundation
import Swifty


class PlaceholderWebService: WebService{
    
    static var serverURL: String = "https://jsonplaceholder.typicode.com/"
    
    static var networkInterface:  WebServiceNetworkInterface = Swifty.shared
    
    static func getPosts() -> NetworkResource {
        return server.get("posts")
    }
    
    static func getUser(for userId: Int) -> NetworkResource {
        return server.get("users")
            .query(["id": userId])
    }
    
    static func getComments(for postId: Int) -> NetworkResource {
        return server.get("comments")
            .query(["postId": postId])
    }
    
    
}
