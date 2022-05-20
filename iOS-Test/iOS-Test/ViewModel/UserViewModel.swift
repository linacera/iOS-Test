//
//  UserViewModel.swift
//  iOS-Test
//
//  Created by lajohanna.cerezo on 19/5/22.
//

import Foundation
import SwiftUI

class UserViewModel: ObservableObject{
    
    @Published var user: User?
    let userService = UserService()
    
    init(user: User? = nil){
        self.user = user
    }
    
    var id: Int{
        user?.id ?? 0
    }
    
    var name: String{
        user?.name ?? ""
    }
    
    var email: String{
        user?.email ?? ""
    }
    
    var username: String{
        user?.username ?? ""
    }
    var phone: String{
        user?.phone ?? ""
    }
    var website: String{
        user?.website ?? ""
    }
        
    
    func getUser(userId: Int){
        userService.getUser(userId: userId) { result in
            if let user = result {
                DispatchQueue.main.async {
                    self.user = user
                }
            }
        }
    }
}
