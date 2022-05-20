//
//  CommentService.swift
//  iOS-Test
//
//  Created by lajohanna.cerezo on 19/5/22.
//

import Foundation

class CommentService{
    
    public func getComments(postId: Int,completion: @escaping ([Comment]?) -> Void){
        
        
        PlaceholderWebService.getComments(for: postId).load{ responseObject in
            
            if let data = responseObject {
                
                guard let comments =  try? JSONDecoder().decode([Comment].self, from: data) else{
                   return completion(nil)
                }
                completion(comments)
            }
            
        } failureBlock: { error in
            print(error)
        }

    }
}
