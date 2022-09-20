//
//  Youtube_Subscribe_Button.swift
//  SwiftUI Collection
//
//  Created by Conner Tate on 9/8/22.
//

import SwiftUI

struct Youtube_Subscribe_Button: View {
    
    @State var isSubscribed = false
    
    var body: some View {
        ZStack {
            Color(isSubscribed ? 0xCC0100 : 0x303030)
                .frame(width: 120, height: 40)
                .cornerRadius(5)
            
            Text("SUBSCRIBE")
                .font(.headline)
                .foregroundColor(Color(isSubscribed ? 0xFFFFFF : 0xAAAAAA))
        }
        .onTapGesture {
            isSubscribed.toggle()
        }
    }
}

struct Youtube_Subscribe_Button_Previews: PreviewProvider {
    static var previews: some View {
        Youtube_Subscribe_Button()
    }
}
