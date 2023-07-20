//
//  IconsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Waseem Mohammad on 30/06/2023.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        Image(systemName: "sun.min.fill")
            .resizable()
//            .aspectRatio(contentMode: .fit)
//            .scaledToFit()
            .scaledToFill()
//            .font(.title)
//            .font(.system(size: 200))
            .foregroundColor(.green)
            .frame(width: 300, height: 300)
//            .clipped()
    }
}

struct IconsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IconsBootcamp()
    }
}
