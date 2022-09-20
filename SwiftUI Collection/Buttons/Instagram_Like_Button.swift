//
//  Instagram_Like_Button.swift
//  SwiftUI Collection
//
//  Created by Conner Tate on 9/8/22.
//

import SwiftUI

struct Instagram_Like_Button: View {
    
    @State var isLiked = false
    @State var tap = false
    
    var body: some View {
        
        Image(systemName: isLiked ? "heart.fill" : "heart")
            .resizable()
            .frame(width: 35, height: 30)
            .foregroundColor(Color(isLiked ? 0xED4956 : 0x262626))
            .scaleEffect(tap ? 1.1 : 1)
            .animation(.spring(response: 0.25, dampingFraction: 0.6), value: tap)
            .onTapGesture {
                isLiked.toggle()
                tap = true
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                    tap = false
                }
            }
    }
}

struct Instagram_Like_Button_Previews: PreviewProvider {
    static var previews: some View {
        Instagram_Like_Button()
    }
}
