//
//  Tiktok_Like_Button.swift
//  SwiftUI Collection
//
//  Created by Conner Tate on 9/8/22.
//

import SwiftUI

struct Tiktok_Like_Button: View {
    @State var tap = false
    @State var xOff = 0.0
    @State var yOff = 0.0
    
    var body: some View {
        
        GeometryReader { geometry in
            ZStack {
                Color.blue.ignoresSafeArea()
                
                Image(systemName:"heart.fill")
                    .resizable()
                    .frame(width: 100, height: 90)
                    .foregroundColor(Color(0xEF3057))
                    .scaleEffect(tap ? 1.1 : 1)
                    .opacity(tap ? 1 : 0.0)
                    .offset(x: xOff, y: yOff)
            }
            .animation(.spring(), value: tap)
            .onTapGesture(count: 2) {
                tap = true
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.75) {
                    tap = false
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                    xOff = Double.random(in: -100..<100) //geometry.size.width
                    yOff = Double.random(in: -100..<100) //geometry.size.height
                }
            }
        }
    }
}

struct Tiktok_Like_Button_Previews: PreviewProvider {
    static var previews: some View {
        Tiktok_Like_Button()
    }
}
