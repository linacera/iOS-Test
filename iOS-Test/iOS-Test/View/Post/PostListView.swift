//
//  PostListView.swift
//  iOS-Test
//
//  Created by lajohanna.cerezo on 19/5/22.
//

import SwiftUI

struct PostListView: View {
    
    @ObservedObject private var postList: PostListViewModel
    
    
    
    init() {
        self.postList = PostListViewModel()
        self.postList.getPosts()
    }
    
    var body: some View {
                
        NavigationView {

            List(self.postList.posts) {
                currentPost in
                
                NavigationLink(destination: PostDetailView(post: currentPost, user: testUser)) {
                    PostRowView(post: currentPost);
                }
                
            }.navigationTitle("Posts")
            .navigationBarTitleDisplayMode(.inline)
            .navigationAppearance(backgroundColor: .green,
                                  foregroundColor: .white,
                                  tintColor: .white,
                                  hideSeparator: true)
            
        }
    }
}

struct PostListView_Previews: PreviewProvider {
    static var previews: some View {
        PostListView()
    }
}



