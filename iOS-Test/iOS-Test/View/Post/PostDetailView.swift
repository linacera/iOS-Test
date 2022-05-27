//
//  PostDetailView.swift
//  iOS-Test
//
//  Created by lajohanna.cerezo on 19/5/22.
//

import SwiftUI

struct PostDetailView: View {
    var post: PostViewModel
    @EnvironmentObject var postList: PostListViewModel
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @ObservedObject private var user: UserViewModel
    @ObservedObject private var commentsList: CommentListViewModel
    
    init(post: PostViewModel){
        self.post = post
        self.user = UserViewModel()
        self.commentsList = CommentListViewModel()
        self.user.getUser(userId: self.post.userId)
        self.commentsList.getComments(postId: self.post.id)
    }
    
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 6){
                
                PostDescriptionView(post: post)
                UserInfoView(user: user.user ?? testUser)
                    
            }.padding(20)
            
            ZStack(alignment: .leading){
                Rectangle()
                    .fill(.gray)
                    .frame(height: 20)
                Text("COMMENTS")
                    .font(.system(size: 20))
                    .fontWeight(.semibold)
                    .padding(.leading, 20)
            }
            
            CommentListView(comments: commentsList.comments)
            
            Button(action: {
                self.postList.removePost(id: self.post.id)
                self.presentationMode.wrappedValue.dismiss()
            }){
                DeleteButtonView(buttonText: "Delete")
            }

        }.navigationTitle("")
            .toolbar{
                Button(action: {
                    
                    if let index = self.postList.posts.firstIndex(where: {$0.id == self.post.id}){
                        self.postList.posts[index].changeFavorite()
                    }
                    
                    self.postList.sortPostByFavorite()
                   
                }){
                    StarView(fillStar: post.isFavorite, starColor: .white)
                }
            }            
        
       
    }
}

struct PostDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PostDetailView(post: testPost)
    }
}
