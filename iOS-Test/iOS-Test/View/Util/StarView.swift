//
//  StarButtonView.swift
//  iOS-Test
//
//  Created by lajohanna.cerezo on 26/5/22.
//

import SwiftUI

struct StarView: View {
    var fillStar: Bool
    var starColor: Color
    
    var body: some View {
        Image(systemName: fillStar ? "star.fill" :  "star")
            .resizable()
            .frame(width: 20, height: 20)
            .foregroundColor(starColor)
    }
}

struct StarView_Previews: PreviewProvider {
    static var previews: some View {
        StarView(fillStar: false, starColor: .yellow)
    }
}
