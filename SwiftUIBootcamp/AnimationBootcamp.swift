//
//  AnimationBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Waseem Mohammad on 10/07/2023.
//

import SwiftUI

struct AnimationBootcamp: View {
    @State var isAnimated: Bool = false
    var body: some View {
        VStack{
            Button("Button") {
                withAnimation(
                    Animation
                        .default
                        .repeatCount(5, autoreverses: true)) {
                    isAnimated.toggle()
                }
                
            }
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ? Color.red : Color.green)
                .frame(
                    width: isAnimated ? 100 : 300 ,
                    height: isAnimated ? 100 : 300
                )
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 300 : 0)
                .animation(.easeIn)
            
            Spacer()
        }
    }
}

struct AnimationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationBootcamp()
    }
}
