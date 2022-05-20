//
//  CommentViewModel.swift
//  iOS-Test
//
//  Created by lajohanna.cerezo on 19/5/22.
//

import Foundation
import SwiftUI

struct CommentViewModel: Identifiable{
    let comment: Comment
    
    var id: Int{
        comment.id
    }
    
    var postId: Int{
        comment.postId
    }
    
    var body: String{
        comment.body
    }
    
    var name: String{
        comment.name
    }
    
    var email: String{
        comment.email
    }
}

class CommentListViewModel: ObservableObject {
    @Published var comments = [CommentViewModel]()
    
    let commentService = CommentService()
    
    func getComments(postId: Int){
        commentService.getComments(postId: postId) { result in
            if let comments = result {
                DispatchQueue.main.async {
                    self.comments = comments.map(CommentViewModel.init)
                }
            }
        }
    }
}
