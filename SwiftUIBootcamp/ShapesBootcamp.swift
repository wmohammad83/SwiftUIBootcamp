//
//  ShapesBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Waseem Mohammad on 30/06/2023.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
//        Circle()
//        Ellipse()
//        Capsule(style: .circular)
//        Rectangle()
        RoundedRectangle(cornerRadius: 10 )
//            .fill(Color.blue)
//            .foregroundColor(.pink)
//            .stroke()
//            .stroke(Color.red)
//            .stroke(Color.red, lineWidth: 14)
//            .stroke(Color.blue, style: StrokeStyle(lineWidth: 60, lineCap: .round, dash: [100]))
//            .trim(from: 0.2,  to: 1.0)
//            .stroke(Color.blue, lineWidth: 50)
            .frame(width: 300, height: 200)
    }
}

struct ShapesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapesBootcamp()
    }
}
