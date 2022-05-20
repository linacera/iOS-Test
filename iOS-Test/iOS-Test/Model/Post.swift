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
    
}

let testPost = PostViewModel.init(post: Post(userId: 1, id: 1, title: "sunt aut facere repellat provident occaecati excepturi optio reprehenderit", body: "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto"))



let testPostList = [PostViewModel.init(post: Post(userId: 1, id: 1, title: "sunt aut facere repellat provident occaecati excepturi optio reprehenderit", body: "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto")), PostViewModel.init(post: Post(userId: 1, id: 2, title: "sunt aut facere repellat provident occaecati excepturi optio reprehenderit", body: "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto"))]


let testComment = Comment(postId: 1, id: 1, name: "Joha", email: "cc@gmail.com", body: "este s e un comentario sobre este s e un comentario sobre")

let testCommentList: CommentListViewModel = CommentListViewModel()
//testCommentList.comments =  [CommentViewModel.init(comment: Comment(postId: 1, id: 1, name: "Joha", email: "cc@gmail.com", body: "este s e un comentario sobre este s e un comentario sobre")), CommentViewModel.init(comment: Comment(postId: 1, id: 1, name: "Joha", email: "cc@gmail.com", body: "este s e un comentario sobre este s e un comentario sobre este s e un comentario sobre"))]



let testUser = User(id: 1, name: "joha", username: "joha", email: "cc@gmail.com", address: Address(street: "1222`", suite: "12233", city: "12343", zipcode: "1212131", geo: Geo(lat: "121231", lng: "121212w")), phone: "1231231", website: "cc.com", company: Company(name: "company", catchPhrase: "company for the win", bs: "ashaksh"))