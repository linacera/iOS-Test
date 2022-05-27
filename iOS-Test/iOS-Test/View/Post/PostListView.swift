//
//  PostListView.swift
//  iOS-Test
//
//  Created by lajohanna.cerezo on 19/5/22.
//

import SwiftUI

struct PostListView: View {
    
    @StateObject private var postList: PostListViewModel  = PostListViewModel()
    @State private var showFavorites = 0
  
    var filteredPosts: [PostViewModel] {
        postList.posts.filter { post in
            (post.isFavorite || showFavorites == 0)
        }
    }
    
    var body: some View {
                
        NavigationView {

            VStack{
                
                Picker("", selection: $showFavorites, content: {
                    Text("All").tag(0)
                    Text("Favorites").tag(1)
                }).pickerStyle(.segmented)
                    .padding(.leading, 20)
                    .padding(.trailing, 20)
                    .padding(.top,10)
                    .colorMultiply(.green)
                
                
                List(self.filteredPosts) {
                    currentPost in
                    
                    NavigationLink(destination: PostDetailView(post: currentPost)) {
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



