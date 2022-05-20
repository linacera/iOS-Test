//
//  PostDescriptionView.swift
//  iOS-Test
//
//  Created by lajohanna.cerezo on 19/5/22.
//

import SwiftUI

struct PostDescriptionView: View {
    var post: PostViewModel
    var body: some View {
        VStack{
            Text("Description").font(.system(size: 20))
                .fontWeight(.semibold)
            Text(post.body).font(.system(size: 15)).fontWeight(.regular)
           // Text("user id "+String(post.userId))
           // Text("post id "+String(post.id))
        }
    }
}

struct PostDescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        PostDescriptionView(post: testPost)
    }
}
