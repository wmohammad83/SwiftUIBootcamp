//
//  ImageBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Waseem Mohammad on 30/06/2023.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image("mrs-1")
//            .renderingMode(.template)
            .resizable()
//            .aspectRatio(contentMode: .fit)
//            .scaledToFit()
            .scaledToFill()
            .frame(width: 300, height: 400)
//            .foregroundColor(.red)
//            .clipped()
//            .cornerRadius(150)
//            .clipShape(
//                Circle()
//                RoundedRectangle(cornerRadius: 35)
//                Ellipse()
//            )
    }
}

struct ImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ImageBootcamp()
    }
}
