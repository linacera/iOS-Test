//
//  PostResponseModel.swift
//  iOS-Test
//
//  Created by lajohanna.cerezo on 19/5/22.
//

import Foundation

struct Post: Decodable, Identifiable{
    let userId: Int
    let id: Int
    let title: String
    let body: String
    var isFavorite: Bool? = false
    
    mutating func changeFavorite(){
        isFavorite = !(isFavorite ?? false)
    }
}


let testPost = PostViewModel.init(post: Post(userId: 1, id: 1, title: "sunt aut facere repellat provident occaecati excepturi optio reprehenderit", body: "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto", isFavorite: true))



let testPostList = [PostViewModel.init(post: Post(userId: 1, id: 1, title: "sunt aut facere repellat provident occaecati excepturi optio reprehenderit", body: "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto", isFavorite: true)), PostViewModel.init(post: Post(userId: 1, id: 2, title: "sunt aut facere repellat provident occaecati excepturi optio reprehenderit", body: "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto", isFavorite: true))]


let testComment = Comment(postId: 1, id: 1, name: "Joha", email: "cc@gmail.com", body: "este s e un comentario sobre este s e un comentario sobre")

let testCommentList: CommentListViewModel = CommentListViewModel()


let testUser = User(id: 1, name: "", username: "", email: "", address: Address(street: "1222`", suite: "12233", city: "12343", zipcode: "1212131", geo: Geo(lat: "121231", lng: "121212w")), phone: "", website: "", company: Company(name: "company", catchPhrase: "company for the win", bs: "ashaksh"))
