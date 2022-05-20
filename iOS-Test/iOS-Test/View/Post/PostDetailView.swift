//
//  PostDetailView.swift
//  iOS-Test
//
//  Created by lajohanna.cerezo on 19/5/22.
//

import SwiftUI

struct PostDetailView: View {
    var post: PostViewModel
    
    @ObservedObject private var user: UserViewModel = UserViewModel()
    @ObservedObject private var commentsList: CommentListViewModel = CommentListViewModel()
    
    init(post: PostViewModel, user: User){
        self.post = post
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
        }
        
       
    }
}

struct PostDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PostDetailView(post: testPost, user: testUser)
    }
}
