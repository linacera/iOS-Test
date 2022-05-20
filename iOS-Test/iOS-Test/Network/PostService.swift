//
//  PlaceholderRequest.swift
//  iOS-Test
//
//  Created by lajohanna.cerezo on 19/5/22.
//

import Foundation

class PostService{
    
    public func getPosts(completion: @escaping ([Post]?) -> Void){
        
        
        PlaceholderWebService.getPosts().load { responseObject in
            print(responseObject)
            if let data = responseObject {
                guard let posts =  try? JSONDecoder().decode([Post].self, from: data) else{
                   return completion(nil)
                }
                completion(posts)
            }
            
        } failureBlock: { error in
            print(error)
        }

    }
}
