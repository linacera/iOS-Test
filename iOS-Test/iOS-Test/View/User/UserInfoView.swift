//
//  UserInfoView.swift
//  iOS-Test
//
//  Created by lajohanna.cerezo on 19/5/22.
//

import SwiftUI

struct UserInfoView: View {
    var user: User
    var body: some View {
        VStack{
            Text("User").font(.system(size: 20))
                .fontWeight(.semibold)
           // UserTextView(name: "id", value: String(user.id))
            UserTextView(name: "Name", value: user.name)
            UserTextView(name: "Email", value: user.email)
            UserTextView(name: "Phone", value: user.phone)
            UserTextView(name: "Website", value: user.website)
        }
       
    }
}

struct UserInfoView_Previews: PreviewProvider {
    static var previews: some View {
        UserInfoView(user: testUser)
    }
}
