//
//  PostViewModel.swift
//  iOS-Test
//
//  Created by lajohanna.cerezo on 19/5/22.
//

import Foundation
import SwiftUI

struct PostViewModel: Identifiable{
    let post: Post
    
    var id: Int{
        post.id
    }
    
    var userId: Int{
        post.userId
    }
    
    var body: String{
        post.body
    }
    
    var title: String{
        post.title
    }
}


class PostListViewModel: ObservableObject{
    @Published var posts = [PostViewModel]()
    
    let postService = PostService()
    
    func getPosts(){
        postService.getPosts { result in
            if let posts = result{
                DispatchQueue.main.async {
                    self.posts = posts.map(PostViewModel.init)
                }
                
            }
        }
    }
    
}
