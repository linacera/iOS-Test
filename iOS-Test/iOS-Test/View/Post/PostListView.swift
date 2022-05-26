//
//  PostListView.swift
//  iOS-Test
//
//  Created by lajohanna.cerezo on 19/5/22.
//

import SwiftUI

struct PostListView: View {
    
    @StateObject private var postList: PostListViewModel  = PostListViewModel()
    @State private var showOnlyFavorites = true
    private var filteredPosts: PostListViewModel
    
    init() {
        self.filteredPosts = PostListViewModel()
        
    }
    
    var body: some View {
                
        NavigationView {

            VStack{
                List(self.postList.posts) {
                    currentPost in
                    
                    NavigationLink(destination: PostDetailView(post: currentPost, user: testUser)) {
                        PostRowView(post: currentPost);
                    }
                    
                }.refreshable {
                    self.postList.removeAllPosts()
                    self.postList.getPosts()
                }.navigationTitle("Posts")
                .navigationBarTitleDisplayMode(.inline)
                .navigationAppearance(backgroundColor: .green,
                                      foregroundColor: .white,
                                      tintColor: .white,
                                      hideSeparator: true)
                
                Button(action: {
                    self.postList.removeAllPosts()
                }){
                    DeleteButtonView(buttonText: "Delete All")
                }
            }
           
            
        }.environmentObject(postList)
            .onAppear(){
                self.postList.getPosts()
            }
    }
}

struct PostListView_Previews: PreviewProvider {
    static var previews: some View {
        PostListView()
    }
}



