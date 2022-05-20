//
//  PostView.swift
//  iOS-Test
//
//  Created by lajohanna.cerezo on 19/5/22.
//

import SwiftUI

struct PostRowView: View {
    
    var post: PostViewModel
    var body: some View {
        HStack{
           

            Text(post.title).font(.system(size: 20))
        }
        
    }
}

struct PostRowView_Previews: PreviewProvider {
    static var previews: some View {
        PostRowView(post: testPost).previewLayout(.fixed(width: 500, height: 200))
    }
}
