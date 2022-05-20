//
//  UserService.swift
//  iOS-Test
//
//  Created by lajohanna.cerezo on 19/5/22.
//

import Foundation

class UserService{
    
    public func getUser(userId: Int,completion: @escaping (User?) -> Void){
        
        
        PlaceholderWebService.getUser(for: userId).load{ responseObject in
            
            if let data = responseObject {
                do{
                    let user = try JSONDecoder().decode([User].self, from: data)
                    completion(user[0])
                }catch{
                    print(error)
                    return completion(nil)
                }
            
                
            }
            
        } failureBlock: { error in
            print(error)
        }

    }
}
