//
//  GradientsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Waseem Mohammad on 30/06/2023.
//

import SwiftUI

struct GradientsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .fill(
//                LinearGradient(
//                    gradient: Gradient(colors: [Color.red, Color.blue, Color.yellow, Color.green, Color.purple]),
//                    startPoint: .topLeading,
//                    endPoint: .bottomTrailing)
                RadialGradient(
                    gradient: Gradient(colors: [Color.red, Color.blue]),
                    center: .topLeading,
                    startRadius: 5,
                    endRadius: 400)
//                AngularGradient(
//                    gradient: Gradient(colors: [Color.red, Color.blue]),
//                    center: .center,
//                    angle: .degrees(170))
            )
            .frame(width: 300, height: 200)
    }
}

struct GradientsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GradientsBootcamp()
    }
}
