//
//  PostViewModel.swift
//  iOS-Test
//
//  Created by lajohanna.cerezo on 19/5/22.
//

import Foundation
import SwiftUI

struct PostViewModel: Identifiable{
     var post: Post

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
    
    var isFavorite: Bool{
        post.isFavorite ?? false
    }
    
    mutating func changeFavorite() {
        post.changeFavorite()
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
    
    func removePost(id: Int){
        if let postIndex = self.posts.firstIndex(where: {$0.id == id}){
            self.posts.remove(at: postIndex)
        }
       
    }
    
    func removeAllPosts(){
        self.posts = [PostViewModel]()
    }
    
    func sortPostByFavorite(){
        let sortedPosts = self.posts.sorted {
            $0.isFavorite && !$1.isFavorite
        }
        self.posts = sortedPosts
    }
    
}
