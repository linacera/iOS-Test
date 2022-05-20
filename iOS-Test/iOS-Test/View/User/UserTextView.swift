//
//  UserTextView.swift
//  iOS-Test
//
//  Created by lajohanna.cerezo on 19/5/22.
//

import SwiftUI

struct UserTextView: View {
    var name: String
    var value: String
    var body: some View {
        
        HStack{
            Text(name + ":").font(.system(size: 15))
                .fontWeight(.semibold)
            
            Text(value).font(.system(size: 15))
                .fontWeight(.light)
                .padding(.trailing,20)
            
            Spacer()
        }
    }
}

struct UserTextView_Previews: PreviewProvider {
    static var previews: some View {
        UserTextView(name: "User", value: "Joha")
    }
}
