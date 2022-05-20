//
//  ContentView.swift
//  iOS-Test
//
//  Created by lajohanna.cerezo on 19/5/22.
//

import SwiftUI

struct ContentView: View {
    
    
    
    var body: some View {
        Text("Hello, world!")
            .padding()
        
            .onAppear{
                getPosts()
            }
    }
    
    func getPosts(){
        let req  = PostService()
        req.getPosts(){ result in
            print(result?[0])
        }
        
        let reqUs = UserService()
        reqUs.getUser(userId: 1) { result in
            print(result?.name)
        }
        
        let reqComns = CommentService()
        reqComns.getComments(postId: 1) { result in
            print(result?[0].body)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
