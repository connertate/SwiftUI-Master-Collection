//
//  iOS_Slide_To_Unlock.swift
//  SwiftUI Collection
//
//  Created by Conner Tate on 9/19/22.
//

import SwiftUI

struct iOS_Slide_To_Unlock: View {
    var body: some View {
        ZStack {
            Color.black
                .frame(width: 250, height: 45)
                .cornerRadius(8)
            
            HStack {
                ZStack {
                    Color.gray
                        .frame(width: 40, height: 35)
                        .cornerRadius(5)
                }
                Text("slide to unlock")
                    .foregroundColor(.white)
            }
        }
    }
}

struct iOS_Slide_To_Unlock_Previews: PreviewProvider {
    static var previews: some View {
        iOS_Slide_To_Unlock()
    }
}
