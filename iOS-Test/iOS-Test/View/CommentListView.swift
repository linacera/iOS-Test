//
//  CommentListView.swift
//  iOS-Test
//
//  Created by lajohanna.cerezo on 19/5/22.
//

import SwiftUI

struct CommentListView: View {
    var comments: [CommentViewModel]
    var body: some View {
        List(comments) {
            currentComment in
            
            Text(currentComment.body)
                .font(.system(size: 15))
                .fontWeight(.light)
            //Text("postid"+String(currentComment.postId))
        }.listStyle(.plain)
    }
}

struct CommentListView_Previews: PreviewProvider {
    static var previews: some View {
        CommentListView(comments: testCommentList.comments)
    }
}
