//
//  DeleteButtonView.swift
//  iOS-Test
//
//  Created by lajohanna.cerezo on 26/5/22.
//

import SwiftUI

struct DeleteButtonView: View {
    var buttonText: String
    
    var body: some View {
        ZStack{
            Color.red
            Text(buttonText)
                .foregroundColor(.white)
        }.frame(maxWidth: .infinity, maxHeight: 40)
            
    }
}

struct DeleteButtonView_Previews: PreviewProvider {
    static var previews: some View {
        DeleteButtonView(buttonText: "Delete")
    }
}
